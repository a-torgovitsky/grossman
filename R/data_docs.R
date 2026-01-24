# Dataset Documentation
#
# This file contains roxygen2 documentation for datasets.
# Students can access this via ?dataset_name after loading the package.
#
# Note: The data itself is NOT in the package. Students use gm_load("name")
# to download it. This documentation helps them understand what's available.

#' Example Wages Dataset
#'
#' Simulated wage and education data for teaching labor economics.
#' This is an example dataset to demonstrate the package structure.
#'
#' @format A data frame with 5,000 rows and 8 variables:
#' \describe{
#'   \item{id}{Unique identifier}
#'   \item{wage}{Hourly wage in USD}
#'   \item{education_years}{Years of formal education}
#'   \item{experience}{Years of work experience}
#'   \item{age}{Age in years}
#'   \item{female}{Indicator for female (1) or male (0)}
#'   \item{urban}{Indicator for urban (1) or rural (0) residence}
#'   \item{region}{Geographic region (Northeast, South, Midwest, West)}
#' }
#'
#' @source Simulated data for teaching purposes.
#'
#' @examples
#' \dontrun{
#' # Load the dataset
#' wages <- gm_load("example_wages")
#'
#' # Basic analysis
#' summary(wages$wage)
#' lm(log(wage) ~ education_years + experience, data = wages)
#' }
#'
#' @name example_wages
#' @docType data
#' @keywords datasets
NULL

# =============================================================================
# Add more dataset documentation below using the same pattern
# =============================================================================

# #' Dataset Name
# #'
# #' Brief description.
# #'
# #' @format A data frame with X rows and Y variables:
# #' \describe{
# #'   \item{var1}{Description}
# #'   \item{var2}{Description}
# #' }
# #'
# #' @source Citation or URL
# #'
# #' @examples
# #' \dontrun{
# #' df <- gm_load("dataset_name")
# #' }
# #'
# #' @name dataset_name
# #' @docType data
# #' @keywords datasets
# NULL
