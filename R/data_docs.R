# Dataset Documentation
#
# This file contains roxygen2 documentation for datasets.
# Students can access this via ?dataset_name after loading the package.
#
# Note: The data itself is NOT in the package. Students use grossman::load("name")
# to download it. This documentation helps them understand what's available.
#
# IMPORTANT: When adding a new dataset, also update the Available Datasets table
# in README.md (add a row with the dataset name, description, dimensions, and
# any variants).

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
#' eskom <- grossman::load("eskom")
#' }
#'
#' @name eskom
#' @docType data
#' @keywords datasets
NULL

#' CPS (Current Population Survey) Dataset
#'
#' Individual-level data from the Current Population Survey (IPUMS-CPS) used
#' for teaching gender wage gap analysis. Sample restrictions follow Blau and
#' Kahn (2017): ages 25-64, full-time, non-self-employed, non-veteran workers
#' with positive wage income and at least 26 weeks worked.
#'
#' @format A data frame with 48,371 rows and 16 variables:
#' \describe{
#'   \item{incwage}{Wage and salary income}
#'   \item{sex}{Sex (Male, Female)}
#'   \item{age}{Age in years (25-64)}
#'   \item{educ}{Education level}
#'   \item{state}{US state of residence}
#'   \item{inctot}{Total personal income}
#'   \item{race}{Race}
#'   \item{marst}{Marital status}
#'   \item{hispan}{Hispanic origin}
#'   \item{ind}{Industry code (IPUMS CPS)}
#'   \item{classwkr}{Class of worker}
#'   \item{wkswork1}{Weeks worked last year}
#'   \item{uhrsworkly}{Usual hours worked per week last year}
#'   \item{metarea}{Metropolitan area}
#'   \item{annualhours}{Hours worked last year (wkswork1 * uhrsworkly)}
#'   \item{wage}{Hourly wage (incwage / annualhours)}
#' }
#'
#' @source Flood, Sarah, Miriam King, Renae Rodgers, Steven Ruggles, J. Robert
#' Warren, and Michael Westberry. IPUMS CPS: Version 8.0.
#' Minneapolis, MN: IPUMS, 2020. \doi{10.18128/D030.V8.0}
#'
#' @references Blau, Francine D. and Lawrence M. Kahn. 2017. "The Gender Wage
#' Gap: Extent, Trends, and Explanations." \emph{Journal of Economic
#' Literature} 55(3): 789-865. \doi{10.1257/jel.20160995}
#'
#' @examples
#' \dontrun{
#' cps <- grossman::load("cps")
#' }
#'
#' @name cps
#' @docType data
#' @keywords datasets
NULL

#' TennCare Dataset
#'
#' State-year panel data on public health insurance and labor supply outcomes,
#' used to study the effects of Tennessee's 2005 TennCare disenrollment.
#'
#' @format A data frame with 136 rows and 29 variables:
#' \describe{
#'   \item{state}{State identifier}
#'   \item{year}{Survey year}
#'   \item{any_public}{Any public health insurance coverage}
#'   \item{working}{Currently employed indicator}
#'   \item{hrs_lw_lt20}{Works < 20 hours/week}
#'   \item{hrs_lw_ge20}{Works >= 20 hours/week}
#'   \item{hrs_lw_2035}{Works 20-34 hours/week}
#'   \item{hrs_lw_ge35}{Works >= 35 hours/week}
#'   \item{any_empl_wk}{Employer insurance among working individuals}
#'   \item{age}{Age in years}
#'   \item{female}{Female indicator}
#' }
#'
#' @section Variants:
#' \describe{
#'   \item{\code{"micro"}}{Individual-level repeated cross-section with
#'   454,260 rows and 28 variables. Includes survey weights for DD and DDD
#'   analysis. Load with \code{grossman::load("tenncare", variant = "micro")}.}
#' }
#'
#' @source Garthwaite, Craig, Tal Gross, and Matthew J. Notowidigdo. 2014.
#' "Public Health Insurance, Labor Supply, and Employment Lock."
#' \emph{Quarterly Journal of Economics} 129(2): 653-696.
#' \doi{10.1093/qje/qju005}
#'
#' @examples
#' \dontrun{
#' tc <- grossman::load("tenncare")
#' tc_micro <- grossman::load("tenncare", variant = "micro")
#' }
#'
#' @name tenncare
#' @docType data
#' @keywords datasets
NULL

#' PSID Consumption and Earnings Panel
#'
#' Balanced panel from the Panel Study of Income Dynamics on household
#' earnings and consumption.
#'
#' @format A data frame with 4,566 rows and 12 variables:
#' \describe{
#'   \item{id}{Household head person ID}
#'   \item{year}{Year}
#'   \item{earn}{Earnings (household head)}
#'   \item{cons}{Consumption (total)}
#'   \item{cons_nd}{Consumption (non-durables)}
#'   \item{cons_srv}{Consumption (services, non-housing)}
#'   \item{educ}{Education (household head)}
#'   \item{age}{Age (household head)}
#'   \item{cons_hs}{Consumption (housing)}
#'   \item{kids}{Number of kids in household}
#'   \item{fsize}{Family size}
#'   \item{earn2nd}{Earnings (2nd member)}
#' }
#'
#' @section Variants:
#' \describe{
#'   \item{\code{"unbalanced"}}{Unbalanced panel with 10,370 rows and 12
#'   variables. Includes all households, not just those observed in every
#'   period. Load with \code{grossman::load("psid", variant = "unbalanced")}.}
#' }
#'
#' @source Blundell, Richard, Luigi Pistaferri, and Ian Preston. 2008.
#' "Consumption Inequality and Partial Insurance."
#' \emph{American Economic Review} 98(5): 1887-1921.
#' \doi{10.1257/aer.98.5.1887}
#'
#' @examples
#' \dontrun{
#' psid <- grossman::load("psid")
#' psid_ub <- grossman::load("psid", variant = "unbalanced")
#' }
#'
#' @name psid
#' @docType data
#' @keywords datasets
NULL
