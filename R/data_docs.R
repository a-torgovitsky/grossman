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

#' Bureaucrats (Village Officials) Dataset
#'
#' Village-year panel data from China on the assignment of College Graduate
#' Village Officials (CGVOs) and welfare outcomes. Used to study the effect
#' of improved bureaucrat quality on poverty alleviation.
#'
#' @format A data frame with 2,809 rows and 18 variables:
#' \describe{
#'   \item{village}{Village ID}
#'   \item{year}{Year}
#'   \item{cgvo}{CGVO has been assigned}
#'   \item{l_subsidy_rate}{Log subsidized population (per 1000)}
#'   \item{l_poor_housing_rate}{Log poor housing households (per 100)}
#'   \item{l_poor_reg_rate}{Log registered poor households (per 100)}
#'   \item{l_disability_rate}{Log population with disabilities (per 1000)}
#'   \item{district}{District ID}
#'   \item{precipitation}{Daily average precipitation (inches)}
#'   \item{temperature}{Daily average temperature (Fahrenheit)}
#'   \item{Lead_D4_plus}{Relative time <= -4}
#'   \item{Lead_D3}{Relative time -3}
#'   \item{Lead_D2}{Relative time -2}
#'   \item{Lead_D1}{Relative time -1}
#'   \item{D0}{Relative time 0}
#'   \item{Lag_D1}{Relative time 1}
#'   \item{Lag_D2}{Relative time 2}
#'   \item{Lag_D3_plus}{Relative time >= 3}
#' }
#'
#' @source He, Guojun and Shaoda Wang. 2017. "Do College Graduates Serving
#' as Village Officials Help Rural China?" \emph{American Economic Journal:
#' Applied Economics} 9(4): 186-215. \doi{10.1257/app.20160079}
#'
#' @examples
#' \dontrun{
#' bureaucrats <- grossman::load("bureaucrats")
#' }
#'
#' @name bureaucrats
#' @docType data
#' @keywords datasets
NULL

#' Child Penalty Dataset
#'
#' PSID panel data on earnings around first childbirth, used to study
#' child penalties in the labor market. Uses edited replication files
#' that remove the event-time restriction from the original study.
#'
#' @format A data frame with 54,365 rows and 12 variables:
#' \describe{
#'   \item{id}{Person identifier}
#'   \item{year}{Survey year}
#'   \item{earn}{Earnings}
#'   \item{byear}{Year of first childbirth}
#'   \item{female}{Female indicator}
#'   \item{hours}{Hours worked}
#'   \item{full_time}{Full-time indicator}
#'   \item{age}{Age at pregnancy}
#'   \item{educ}{Education}
#'   \item{industry}{Industry of household head}
#'   \item{race}{Race/ethnicity}
#'   \item{region}{Census region}
#' }
#'
#' @source Cortés, Patricia and Jessica Pan. 2023.
#' "Children and the Remaining Gender Gaps in the Labor Market."
#' \emph{Journal of Economic Literature} 61(4): 1359-1409.
#' \doi{10.1257/jel.20221549}
#'
#' @examples
#' \dontrun{
#' childpen <- grossman::load("childpen")
#' }
#'
#' @name childpen
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

#' PISA Incentive Experiment Dataset
#'
#' Experimental data on test score incentives in US and Chinese schools.
#' Students were randomly assigned to receive financial incentives for
#' performance on a low-stakes test (PISA-style).
#'
#' @format A data frame with 1,103 rows and 21 variables:
#' \describe{
#'   \item{score}{Test score}
#'   \item{incent}{Treatment: received incentive (1=yes, 0=no)}
#'   \item{us_school1_reg}{US school 1, regular class}
#'   \item{us_school1_hon}{US school 1, honors class}
#'   \item{us_school2_reg}{US school 2, regular class}
#'   \item{us_school2_hon}{US school 2, honors class}
#'   \item{us}{United States indicator (1=US, 0=China)}
#'   \item{group}{Treatment group assignment}
#'   \item{school}{School identifier}
#'   \item{female}{Female indicator (1=female, 0=male)}
#'   \item{black}{Black}
#'   \item{asian}{Asian}
#'   \item{hisp_white}{Hispanic White}
#'   \item{hisp_nw}{Hispanic Non-white}
#'   \item{other}{Other race/ethnicity}
#'   \item{age}{Age}
#'   \item{agemissing}{Age missing indicator}
#'   \item{sh_school2}{Share school 2}
#'   \item{sh_school3}{Share school 3}
#'   \item{sh_school4}{Share school 4}
#'   \item{t2018}{Year 2018 indicator}
#' }
#'
#' @source Gneezy, Uri, John A. List, Jeffrey A. Livingston, Xiangdong Qin,
#' Sally Sadoff, and Yang Xu. 2019. "Measuring Success in Education: The Role
#' of Effort on the Test Itself." \emph{American Economic Review: Insights}
#' 1(3): 291-308. \doi{10.1257/aeri.20180633}
#'
#' @examples
#' \dontrun{
#' pisa <- grossman::load("pisa")
#' }
#'
#' @name pisa
#' @docType data
#' @keywords datasets
NULL

#' Union Wage Panel Dataset
#'
#' Panel data on wages and union status for young men, used to study the
#' effect of unions on wages.
#'
#' @format A data frame with 4,360 rows and 36 variables:
#' \describe{
#'   \item{nr}{Person identifier}
#'   \item{year}{Observation year}
#'   \item{ag}{Industry: Agriculture}
#'   \item{black}{Black}
#'   \item{bus}{Industry: Business & Repair Service}
#'   \item{con}{Industry: Construction}
#'   \item{ent}{Industry: Entertainment}
#'   \item{exper}{Experience (Age - 6 - Schooling)}
#'   \item{fin}{Industry: Finance}
#'   \item{hisp}{Hispanic}
#'   \item{hlth}{Has health disability}
#'   \item{hours}{Hours worked (year)}
#'   \item{man}{Industry: Manufacturing}
#'   \item{mar}{Married}
#'   \item{min}{Industry: Mining}
#'   \item{nc}{Lives in North Central}
#'   \item{ne}{Lives in North East}
#'   \item{occ1}{Occupation: Professional, Technical and kindred}
#'   \item{occ2}{Occupation: Managers, Officials and Proprietors}
#'   \item{occ3}{Occupation: Sales Workers}
#'   \item{occ4}{Occupation: Clerical and kindred}
#'   \item{occ5}{Occupation: Craftsmen, Foremen and kindred}
#'   \item{occ6}{Occupation: Operatives and kindred}
#'   \item{occ7}{Occupation: Laborers and farmers}
#'   \item{occ8}{Occupation: Farm Laborers and Foreman}
#'   \item{occ9}{Occupation: Service Workers}
#'   \item{per}{Industry: Personal Service}
#'   \item{pro}{Industry: Professional & Related Service}
#'   \item{pub}{Industry: Public Administration}
#'   \item{rur}{Lives in rural area}
#'   \item{s}{Lives in South}
#'   \item{school}{Years of schooling}
#'   \item{tra}{Industry: Transportation}
#'   \item{trad}{Industry: Trade}
#'   \item{union}{Wage set by collective bargaining}
#'   \item{wage}{Log of hourly wage}
#' }
#'
#' @source Vella, Francis and Marno Verbeek. 1998. "Whose Wages Do Unions
#' Raise? A Dynamic Model of Unionism and Wage Rate Determination for Young
#' Men." \emph{Journal of Applied Econometrics} 13(2): 163-183.
#' \doi{10.1002/(SICI)1099-1255(199803/04)13:2<163::AID-JAE460>3.0.CO;2-Y}
#'
#' @examples
#' \dontrun{
#' unions <- grossman::load("unions")
#' }
#'
#' @name unions
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
