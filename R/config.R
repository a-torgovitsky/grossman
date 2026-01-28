# Configuration for data fetching

# The base URL for the data hosting repo (grossman-data on GitHub)
DATA_BASE_URL <- "https://raw.githubusercontent.com/a-torgovitsky/grossman-data/main/data"

#' Get the local cache directory for grossman data
#'
#' @return Path to cache directory
#' @keywords internal
grossman_cache_dir <- function() {
 dir <- tools::R_user_dir("grossman", which = "cache")
 if (!dir.exists(dir)) {
   dir.create(dir, recursive = TRUE)
 }
 dir
}

#' Get or set the data source URL
#'
#' @param url If provided, sets a new base URL for data fetching.
#' @return The current base URL (invisibly if setting)
#' @export
#' @examples
#' # Get current URL
#' grossman_data_url()
#'
#' # Set custom URL (e.g., for local testing)
#' grossman_data_url("http://localhost:8000/data")
grossman_data_url <- function(url = NULL) {
 if (!is.null(url)) {
   options(grossman.data_url = url)
   invisible(url)
 } else {
   getOption("grossman.data_url", default = DATA_BASE_URL)
 }
}
