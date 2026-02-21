# Dataset Documentation
#
# This file contains roxygen2 documentation for datasets.
# Students can access this via ?dataset_name after loading the package.
#
# Note: The data itself is NOT in the package. Students use grossman::load("name")
# to download it. This documentation helps them understand what's available.

#' Example Wages Dataset
#'
#' Simulated wage and education data for teaching labor economics.
#' This is an example dataset to demonstrate the package structure.
#'
#' @format A data frame with 50 rows and 8 variables:
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
#' wages <- grossman::load("example_wages")
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

#' Eskom Electrification Dataset
#'
#' Community-level data from South Africa used to study the effects of rural
#' electrification on employment. The Eskom electrification project (1996-2001)
#' provides quasi-experimental variation in electricity access.
#'
#' @format A data frame with 1816 rows and 18 variables:
#' \describe{
#'   \item{eskom}{Treatment indicator: 1 if electrified 1996-2001, 0 otherwise}
#'   \item{gradient}{Average community land gradient (instrument)}
#'   \item{km_to_grid}{Distance from community centroid to nearest electricity grid (km)}
#'   \item{km_to_road}{Distance to nearest road (km)}
#'   \item{km_to_town}{Distance to nearest town (km)}
#'   \item{hh_dens}{Household density in 1996}
#'   \item{hh_pov}{Fraction of households below ZAR 6,000/year in 1996}
#'   \item{pr_female_hh_head}{Fraction of households headed by a female}
#'   \item{sex_ratio}{Ratio of African adult women to men in 1996}
#'   \item{pr_indian_or_white}{Fraction of households headed by Indian or white person}
#'   \item{pr_hs_men}{Fraction of African men with matric (high school)}
#'   \item{pr_hs_women}{Fraction of African women with matric (high school)}
#'   \item{d_water_access}{Change in fraction of households with water source nearby}
#'   \item{d_toilet}{Change in fraction of households with flush toilet}
#'   \item{d_pr_emp_f}{Change in female employment rate (2001 - 1996)}
#'   \item{d_pr_emp_m}{Change in male employment rate (2001 - 1996)}
#'   \item{district}{District code}
#'   \item{subdistrict}{Subdistrict (main place) code}
#' }
#'
#' @source Dinkelman, Taryn. 2011. "The Effects of Rural Electrification on
#' Employment: New Evidence from South Africa." \emph{American Economic Review}
#' 101(7): 3078-3108. \doi{10.1257/aer.101.7.3078}
#'
#' @examples
#' \dontrun{
#' # Load the dataset
#' eskom <- grossman::load("eskom")
#'
#' # Replicate Table 3, Column 4 (first stage)
#' first_stage <- lm(eskom ~ gradient + km_to_grid + hh_dens + hh_pov +
#'                   pr_female_hh_head + sex_ratio + pr_indian_or_white +
#'                   km_to_road + km_to_town + pr_hs_men + pr_hs_women +
#'                   d_water_access + d_toilet + as.factor(district),
#'                   data = eskom)
#' summary(first_stage)
#' }
#'
#' @name eskom
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
# #' df <- grossman::load("dataset_name")
# #' }
# #'
# #' @name dataset_name
# #' @docType data
# #' @keywords datasets
# NULL
