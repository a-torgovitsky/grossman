#' Load a dataset from the grossman collection
#'
#' Downloads and caches datasets from the remote repository. After the first
#' download, data is served from a local cache for faster access.
#'
#' Every call prints a one-line summary of the dataset's dimensions, e.g.
#' `cps: 48371 rows x 16 columns`. A download notice is printed only when the
#' dataset is fetched from the remote repository.
#'
#' @param name Character. The name of the dataset to load (without file extension).
#' @param variant Character. Optional variant of the dataset (e.g., "unbalanced", "micro").
#' @param refresh Logical. If TRUE, re-download even if cached. Default FALSE.
#'
#' @return A data frame (tibble) containing the requested dataset.
#' @export
#'
#' @examples
#' \dontrun{
#' # Load a dataset (use namespace prefix, don't library())
#' df <- grossman::load("example_wages")
#'
#' # Load a variant
#' df <- grossman::load("psid", variant = "unbalanced")
#'
#' # Force refresh from remote
#' df <- grossman::load("example_wages", refresh = TRUE)
#' }
load <- function(name, variant = NULL, refresh = FALSE) {
  stem <- if (is.null(variant)) name else paste0(name, "_", variant)
  filename <- paste0(stem, ".rds")
  local_path <- file.path(grossman_cache_dir(), filename)

  if (refresh || !file.exists(local_path)) {
    url <- paste0(grossman_data_url(), "/", filename)
    cli::cli_alert_info("Downloading {.val {stem}} from remote...")

    tryCatch({
      resp <- httr2::req_perform(httr2::request(url))

      if (httr2::resp_status(resp) != 200) {
        cli::cli_abort("Dataset {.val {stem}} not found (HTTP {httr2::resp_status(resp)})")
      }

      writeBin(httr2::resp_body_raw(resp), local_path)
    }, error = function(e) {
      cli::cli_abort(c(
        "Failed to download {.val {stem}}",
        "x" = conditionMessage(e),
        "i" = "Check that the dataset exists at {.url {url}}"
      ))
    })
  }

  df <- readRDS(local_path)
  cli::cli_inform("{stem}: {nrow(df)} rows x {ncol(df)} columns")
  df
}

#' List available datasets
#'
#' Shows all datasets available in the grossman collection.
#' Information is extracted from the package documentation.
#'
#' @return A data frame with dataset names, descriptions, and dimensions.
#' @export
#'
#' @examples
#' \dontrun{
#' # See available datasets (use namespace prefix, don't library())
#' grossman::list()
#' }
list <- function() {
  rd <- tools::Rd_db("grossman")

  datasets <- lapply(names(rd), function(nm) {
    doc <- rd[[nm]]
    keywords <- tools:::.Rd_get_metadata(doc, "keyword")

    # Only include dataset documentation
    if (!"datasets" %in% keywords) return(NULL)

    name <- tools:::.Rd_get_metadata(doc, "name")
    title <- tools:::.Rd_get_metadata(doc, "title")
    format_text <- tools:::.Rd_get_metadata(doc, "format")

    # Parse "A data frame with X rows and Y variables" from format
    rows <- cols <- NA_integer_
    if (grepl("(\\d+)\\s+rows?\\s+and\\s+(\\d+)\\s+(variables?|columns?)", format_text)) {
      m <- regmatches(format_text, regexec("(\\d+)\\s+rows?\\s+and\\s+(\\d+)", format_text))[[1]]
      rows <- as.integer(m[2])
      cols <- as.integer(m[3])
    }

    data.frame(
      name = name,
      description = title,
      rows = rows,
      cols = cols,
      stringsAsFactors = FALSE
    )
  })

  do.call(rbind, Filter(Negate(is.null), datasets))
}

#' Clear the local data cache
#'
#' Removes all cached datasets from the local machine.
#'
#' @param name Optional. If provided, only clears the cache for this dataset.
#' @param variant Optional. If provided along with name, clears the variant.
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
#'
#' # Clear a variant
#' grossman::clear_cache("psid", variant = "unbalanced")
#' }
clear_cache <- function(name = NULL, variant = NULL) {
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
   filename <- if (is.null(variant)) {
     paste0(name, ".rds")
   } else {
     paste0(name, "_", variant, ".rds")
   }
   path <- file.path(cache_dir, filename)
   if (file.exists(path)) {
     file.remove(path)
     cli::cli_alert_success("Cleared cache for {.val {name}}")
   } else {
     cli::cli_alert_warning("{.val {name}} was not in cache")
   }
 }

 invisible(NULL)
}
