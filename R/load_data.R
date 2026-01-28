#' Load a dataset from the grossman collection
#'
#' Downloads and caches datasets from the remote repository. After the first
#' download, data is served from a local cache for faster access.
#'
#' @param name Character. The name of the dataset to load (without file extension).
#' @param refresh Logical. If TRUE, re-download even if cached. Default FALSE.
#' @param format Character. The format to read. Default "parquet", also supports "rds".
#'
#' @return A data frame (tibble) containing the requested dataset.
#' @export
#'
#' @examples
#' \dontrun{
#' # Load a dataset
#' df <- grossman::load("example_wages")
#'
#' # Force refresh from remote
#' df <- grossman::load("example_wages", refresh = TRUE)
#' }
load <- function(name, refresh = FALSE, format = c("parquet", "rds")) {
 format <- match.arg(format)
 ext <- if (format == "parquet") ".parquet" else ".rds"
 filename <- paste0(name, ext)

 cache_dir <- grossman_cache_dir()
 local_path <- file.path(cache_dir, filename)

 # Check cache unless refresh requested
 if (!refresh && file.exists(local_path)) {
   cli::cli_alert_info("Loading {.val {name}} from cache")
   return(read_data_file(local_path, format))
 }

 # Download from remote
 url <- paste0(grossman_data_url(), "/", filename)
 cli::cli_alert_info("Downloading {.val {name}} from remote...")

 tryCatch({
   req <- httr2::request(url)
   resp <- httr2::req_perform(req)

   if (httr2::resp_status(resp) != 200) {
     cli::cli_abort("Dataset {.val {name}} not found (HTTP {httr2::resp_status(resp)})")
   }

   # Save to cache
   writeBin(httr2::resp_body_raw(resp), local_path)
   cli::cli_alert_success("Cached to {.path {local_path}}")

   read_data_file(local_path, format)

 }, error = function(e) {
   cli::cli_abort(c(
     "Failed to download {.val {name}}",
     "x" = conditionMessage(e),
     "i" = "Check that the dataset exists at {.url {url}}"
   ))
 })
}

#' Read a data file based on format
#' @keywords internal
read_data_file <- function(path, format) {
 if (format == "parquet") {
   arrow::read_parquet(path)
 } else {
   readRDS(path)
 }
}

#' List available datasets
#'
#' Shows all datasets available in the grossman collection.
#'
#' @return A data frame with dataset names and descriptions.
#' @export
#'
#' @examples
#' \dontrun{
#' grossman::list()
#' }
list <- function() {
 # This reads from a manifest file in the package
 manifest_path <- system.file("manifest.csv", package = "grossman")

 if (manifest_path == "") {
   cli::cli_abort("Manifest file not found. Package may be incorrectly installed.")
 }

 utils::read.csv(manifest_path, stringsAsFactors = FALSE)
}

#' Clear the local data cache
#'
#' Removes all cached datasets from the local machine.
#'
#' @param name Optional. If provided, only clears the cache for this dataset.
#' @return Invisible NULL
#' @export
#'
#' @examples
#' \dontrun{
#' # Clear all cached data
#' grossman::clear_cache()
#'
#' # Clear specific dataset
#' grossman::clear_cache("example_wages")
#' }
clear_cache <- function(name = NULL) {
 cache_dir <- grossman_cache_dir()

 if (is.null(name)) {
   files <- list.files(cache_dir, full.names = TRUE)
   if (length(files) > 0) {
     file.remove(files)
     cli::cli_alert_success("Cleared {length(files)} cached file(s)")
   } else {
     cli::cli_alert_info("Cache is already empty")
   }
 } else {
   # Try both formats
   for (ext in c(".parquet", ".rds")) {
     path <- file.path(cache_dir, paste0(name, ext))
     if (file.exists(path)) {
       file.remove(path)
       cli::cli_alert_success("Cleared cache for {.val {name}}")
       return(invisible(NULL))
     }
   }
   cli::cli_alert_warning("{.val {name}} was not in cache")
 }

 invisible(NULL)
}
