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

#' Cigarettes Dataset
#'
#' State-year panel on cigarette sales, prices, and demographics.
#'
#' @format A data frame with 1,209 rows and 7 variables:
#' \describe{
#'   \item{state}{State}
#'   \item{year}{Year}
#'   \item{cigsales}{Cigarette sales per capita}
#'   \item{gdp}{Log GDP per capita}
#'   \item{price}{Average retail price of cigarettes}
#'   \item{age1524}{Proportion of population aged 15-24}
#'   \item{beer}{Per capita beer consumption}
#' }
#'
#' @source Abadie, Alberto, Alexis Diamond, and Jens Hainmueller. 2010.
#' "Synthetic Control Methods for Comparative Case Studies: Estimating the
#' Effect of California's Tobacco Control Program." \emph{Journal of the
#' American Statistical Association} 105(490): 493-505.
#' \doi{10.1198/jasa.2009.ap08746}
#'
#' @examples
#' \dontrun{
#' cigs <- grossman::load("cigs")
#' }
#'
#' @name cigs
#' @docType data
#' @keywords datasets
NULL

#' Cookstove Adoption Dataset
#'
#' SMS survey panel on cookstove adoption in Kenya. Used to study
#' the role of credit and attention in adoption of energy efficient
#' technologies.
#'
#' @format A data frame with 7,949 rows and 7 variables:
#' \describe{
#'   \item{SMS_date}{SMS survey date}
#'   \item{respondent_id}{Respondent ID}
#'   \item{amount_weekly}{Weekly charcoal spending}
#'   \item{jikokoa}{Bought cookstove}
#'   \item{wtp}{Willingness to pay (USD)}
#'   \item{amount_weekly_pre}{Pre-treatment weekly charcoal spending}
#'   \item{price}{Offered price (USD)}
#' }
#'
#' @source Berkouwer, Susanna B. and Joshua T. Dean. 2022. "Credit, Attention,
#' and Externalities in the Adoption of Energy Efficient Technologies by
#' Low-Income Households." \emph{American Economic Review} 112(10): 3291-3330.
#' \doi{10.1257/aer.20210766}
#'
#' @examples
#' \dontrun{
#' cookstove <- grossman::load("cookstove")
#' }
#'
#' @name cookstove
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

#' Redistribution Preferences Dataset
#'
#' Survey experiment data on intergenerational mobility perceptions and
#' preferences for redistribution.
#'
#' @format A data frame with 9,792 rows and 105 variables. The dataset
#' contains the full replication data from waves B and C of the survey
#' experiment. Key variables include treatment indicators, mobility
#' perceptions, redistribution preferences, and demographic controls.
#'
#' @source Alesina, Alberto, Stefanie Stantcheva, and Edoardo Teso. 2018.
#' "Intergenerational Mobility and Preferences for Redistribution."
#' \emph{American Economic Review} 108(2): 521-554.
#' \doi{10.1257/aer.20162015}
#'
#' @examples
#' \dontrun{
#' redistribution <- grossman::load("redistribution")
#' }
#'
#' @name redistribution
#' @docType data
#' @keywords datasets
NULL

#' Native American Reservations Dataset
#'
#' Cross-sectional data on Native American reservations with economic and
#' ethnographic variables. Used to study the effect of forced coexistence
#' of different tribes on economic development.
#'
#' @format A data frame with 182 rows and 19 variables:
#' \describe{
#'   \item{forced}{Forced coexistence index}
#'   \item{historical.centralization}{Historical political centralization}
#'   \item{per.capita.income}{Per capita income}
#'   \item{county.per.capita.income}{County per capita income}
#'   \item{county.unemployment}{County unemployment rate}
#'   \item{distance.to.nearest.city}{Distance to nearest city (km)}
#'   \item{ruggedness}{Terrain ruggedness}
#'   \item{reservation.area}{Reservation area (sq km)}
#'   \item{ea.calories}{Ethnographic Atlas: caloric dependence on agriculture}
#'   \item{ea.sedentary}{Ethnographic Atlas: settlement pattern (sedentary)}
#'   \item{ea.complexity}{Ethnographic Atlas: jurisdictional hierarchy}
#'   \item{ea.wealth.distinctions}{Ethnographic Atlas: class stratification}
#'   \item{population}{Population}
#'   \item{adult.population.share}{Adult population share}
#'   \item{casino}{Has a casino}
#'   \item{state}{State}
#'   \item{tribeid}{Ethnographic Atlas tribe ID}
#'   \item{gold}{Historical gold deposits (instrument)}
#'   \item{silver}{Historical silver deposits (instrument)}
#' }
#'
#' @source Dippel, Christian. 2014. "Forced Coexistence and Economic
#' Development: Evidence from Native American Reservations."
#' \emph{Econometrica} 82(6): 2131-2165. \doi{10.3982/ECTA11423}
#'
#' @examples
#' \dontrun{
#' reservations <- grossman::load("reservations")
#' }
#'
#' @name reservations
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

#' Hurricane Dataset
#'
#' County-year panel on hurricane exposure and economic outcomes,
#' used to study the fiscal cost of hurricanes.
#'
#' @format A data frame with 49,698 rows and 7 variables:
#' \describe{
#'   \item{county}{County FIPS code}
#'   \item{year}{Year}
#'   \item{hyear}{First hurricane year (Inf if none)}
#'   \item{govtrans}{Log per capita government transfers}
#'   \item{bustrans}{Log per capita business transfers}
#'   \item{emprate}{Total adult employment rate}
#'   \item{avgwage}{Log average wage and salary disbursements}
#' }
#'
#' @source Deryugina, Tatyana. 2017. "The Fiscal Cost of Hurricanes: Disaster
#' Aid versus Social Insurance." \emph{American Economic Journal: Economic
#' Policy} 9(3): 168-198. \doi{10.1257/pol.20140296}
#'
#' @examples
#' \dontrun{
#' hurricane <- grossman::load("hurricane")
#' }
#'
#' @name hurricane
#' @docType data
#' @keywords datasets
NULL

#' Kenya Grid Electrification Dataset
#'
#' Household panel data from a rural electrification experiment in Kenya.
#' Randomized subsidies for grid connection to study the economics of
#' rural electrification.
#'
#' @format A data frame with 4,368 rows and 52 variables (alphabetically
#' ordered). Key variables include:
#' \describe{
#'   \item{connected}{Grid connected}
#'   \item{treated_all}{Any treatment}
#'   \item{treat_low}{Treatment arm #1 (25k subsidy)}
#'   \item{treat_med}{Treatment arm #2 (15k subsidy)}
#'   \item{treat_full}{Treatment arm #3 (0% subsidy)}
#'   \item{emi}{Economic Index}
#'   \item{nemi}{Non-Economic Index}
#'   \item{hours_worked}{Total hours worked last week}
#'   \item{hhid}{Household ID}
#'   \item{siteno}{Community ID}
#' }
#'
#' @source Lee, Kenneth, Edward Miguel, and Catherine Wolfram. 2020.
#' "Experimental Evidence on the Economics of Rural Electrification."
#' \emph{Journal of Political Economy} 128(4): 1523-1565.
#' \doi{10.1086/705417}
#'
#' @examples
#' \dontrun{
#' kenyagrid <- grossman::load("kenyagrid")
#' }
#'
#' @name kenyagrid
#' @docType data
#' @keywords datasets
NULL

#' Kindergarten and Maternal Labor Supply Dataset
#'
#' CPS data on kindergarten enrollment and maternal labor supply, used
#' to study the effect of public schooling for young children on mothers'
#' employment.
#'
#' @format A data frame with 17,817 rows and 23 variables:
#' \describe{
#'   \item{youngest}{Age of youngest child}
#'   \item{public}{Child enrolled in public school}
#'   \item{quarter}{Quarter of birth}
#'   \item{enrold}{Child enrolled in any school}
#'   \item{age}{Mother's age}
#'   \item{grade}{Mother's education}
#'   \item{centcity}{Resides in central city}
#'   \item{white}{Mother's race is white}
#'   \item{num05}{Number of kids aged 0-5 in HH}
#'   \item{num612}{Number of kids aged 6-12 in HH}
#'   \item{num1317}{Number of kids aged 13-17 in HH}
#'   \item{numge18}{Number of kids aged 18+ in HH}
#'   \item{othrlt18}{Number of other HH members aged <18}
#'   \item{othrge18}{Number of other HH members aged 18+}
#'   \item{weeksw79}{Weeks worked in 1979}
#'   \item{work79}{Employment in 1979}
#'   \item{hours79}{Hours worked in 1979}
#'   \item{worked}{Worked last week}
#'   \item{hours}{Hours worked last week}
#'   \item{assist}{Received public assistance in 1979}
#'   \item{salary}{Wage and salary income in 1979}
#'   \item{state}{State of current residence}
#'   \item{bmodk5}{Birth state of child}
#' }
#'
#' @source Gelbach, Jonah B. 2002. "Public Schooling for Young Children and
#' Maternal Labor Supply." \emph{American Economic Review} 92(1): 307-322.
#' \doi{10.1257/000282802760015748}
#'
#' @examples
#' \dontrun{
#' kindy <- grossman::load("kindy")
#' }
#'
#' @name kindy
#' @docType data
#' @keywords datasets
NULL

#' Negative Income Tax (SIME/DIME) Dataset
#'
#' Household-year balanced panel from the Seattle-Denver Income Maintenance
#' Experiment (SIME/DIME), a 1970s randomized trial of negative income tax
#' plans. Restricted to 3-year program enrollees observed in all four years
#' (baseline + 3 experimental).
#'
#' @format A data frame with 9,720 rows and 12 variables:
#' \describe{
#'   \item{id}{Household ID (enrollment family)}
#'   \item{year}{Year relative to enrollment (0=baseline, 1-3=experimental)}
#'   \item{treat}{Assigned to NIT plan (1=treatment, 0=control)}
#'   \item{strata}{Randomization stratum (income x race x site)}
#'   \item{site}{Experiment site (seattle/denver)}
#'   \item{dual}{Dual-headed household}
#'   \item{black}{Black}
#'   \item{white}{White}
#'   \item{hisp}{Hispanic}
#'   \item{employ}{All household heads employed}
#'   \item{hours}{Total hours worked, all heads (monthly avg)}
#'   \item{earnings}{Total earnings, all heads (monthly avg, nominal $)}
#' }
#'
#' @source Seattle-Denver Income Maintenance Experiment (SIME/DIME).
#'
#' @examples
#' \dontrun{
#' nit <- grossman::load("nit")
#' }
#'
#' @name nit
#' @docType data
#' @keywords datasets
NULL

#' Olyset (Bed Nets) Dataset
#'
#' Village-level data on bed net pricing, ownership, and usage in Kenya.
#' Used to study the effect of short-run subsidies on long-run adoption.
#'
#' @format A data frame with 1,078 rows and 4 variables:
#' \describe{
#'   \item{village}{Village identifier}
#'   \item{usenet}{Uses bed net}
#'   \item{ownnet}{Owns bed net}
#'   \item{price}{Price offered (Kenyan shillings)}
#' }
#'
#' @source Dupas, Pascaline. 2014. "Short-Run Subsidies and Long-Run Adoption
#' of New Health Products: Evidence from a Field Experiment."
#' \emph{Econometrica} 82(1): 197-228. \doi{10.3982/ECTA9508}
#'
#' @examples
#' \dontrun{
#' olyset <- grossman::load("olyset")
#' }
#'
#' @name olyset
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

#' Queens Dataset
#'
#' Panel data on European monarchs and wars, used to study whether queens
#' were more likely than kings to engage in interstate conflict.
#'
#' @format A data frame with 3,586 rows and 17 variables:
#' \describe{
#'   \item{kingdom}{Kingdom}
#'   \item{year}{Year}
#'   \item{inwar}{Any participation in interstate conflict}
#'   \item{queen}{Queen regnant indicator}
#'   \item{fbmale}{Firstborn is male}
#'   \item{sister}{Number of female siblings}
#'   \item{century}{Century indicator}
#'   \item{decade}{Decade indicator}
#'   \item{ruler1_name}{Name of ruler 1}
#'   \item{ruler2_name}{Name of ruler 2 (co-ruler)}
#'   \item{firstborn_missinggender}{Firstborn missing gender}
#'   \item{anylegit}{Any legitimate non-missing birth-year heir}
#'   \item{anylegit_missingbirthyear}{Any legitimate missing birth-year heir}
#'   \item{previous_corulers_unrel}{Previous co-rulers unrelated}
#'   \item{totsib}{Total siblings}
#'   \item{reign_iv}{Reign cluster ID (instrument)}
#'   \item{sibling_missinggender}{Sibling with missing gender}
#' }
#'
#' @source Dube, Oeindrila and S.P. Harish. 2020. "Queens."
#' \emph{Journal of Political Economy} 128(7): 2579-2652.
#' \doi{10.1086/707011}
#'
#' @examples
#' \dontrun{
#' queens <- grossman::load("queens")
#' }
#'
#' @name queens
#' @docType data
#' @keywords datasets
NULL

#' Third Kid (Family Size) Dataset
#'
#' 1980 Census microdata on family size and labor supply for married women
#' with two or more children. Uses same-sex of first two children as an
#' instrument for having a third child.
#'
#' @format A data frame with 254,652 rows and 34 variables:
#' \describe{
#'   \item{kidcount}{Number of children}
#'   \item{morekids}{Had more than 2 kids}
#'   \item{boys2}{First two births boys}
#'   \item{girls2}{First two births girls}
#'   \item{boy1st}{First birth boy}
#'   \item{samesex}{First two kids are of same sex}
#'   \item{multi2nd}{Second birth is a multiple (twin)}
#'   \item{agem}{Age of mother}
#'   \item{agefstm}{Age of mom at first birth}
#'   \item{blackm}{Black (mom)}
#'   \item{hispm}{Hispanic (mom)}
#'   \item{othracem}{Other race (mom)}
#'   \item{workedm}{Mom worked last year}
#'   \item{weeksm1}{Weeks worked (mom)}
#'   \item{hourswm}{Hours of work per week (mom)}
#'   \item{incomem}{Mom's labor income}
#'   \item{faminc1}{Family income}
#'   \item{nonmomi}{Income not generated by mom}
#'   \item{famincl}{Log family income}
#'   \item{moreths}{Mom has more than high school education}
#'   \item{boy2nd}{Second birth boy}
#'   \item{educm}{Mom's education (years)}
#'   \item{hsormore}{Mom has high school or more education}
#'   \item{hsgrad}{Mom is a high school graduate}
#'   \item{blackd}{Black (dad)}
#'   \item{hispd}{Hispanic (dad)}
#'   \item{othraced}{Other race (dad)}
#'   \item{workedd}{Dad worked last year}
#'   \item{weeksd1}{Weeks worked (dad)}
#'   \item{hourswd}{Hours of work per week (dad)}
#'   \item{incomed}{Dad's labor income}
#'   \item{ageq2nd}{Age of second kid in quarters}
#'   \item{ageqk}{Age of first kid in quarters}
#'   \item{ageq3rd}{Age of 3rd kid in quarters}
#' }
#'
#' @source Angrist, Joshua D. and William N. Evans. 1998. "Children and Their
#' Parents' Labor Supply: Evidence from Exogenous Variation in Family Size."
#' \emph{American Economic Review} 88(3): 450-477.
#'
#' @examples
#' \dontrun{
#' thirdkid <- grossman::load("thirdkid")
#' }
#'
#' @name thirdkid
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

#' Widows (Land Inheritance) Dataset
#'
#' Household-level data on land inheritance, fertilizer use, and
#' agricultural outcomes in Kenya.
#'
#' @format A data frame with 7,825 rows and 16 variables:
#' \describe{
#'   \item{fert}{Total fertilizer use (kg)}
#'   \item{noninh}{Non-inheritance land access}
#'   \item{fertsub}{Any free fertilizer received}
#'   \item{hh_landaccess}{Household land access}
#'   \item{numadults}{Number of adult equivalents}
#'   \item{district}{District}
#'   \item{hh_couple}{Household is a couple}
#'   \item{sea_group}{SEA group}
#'   \item{hh_number_cattle}{Number of cattle}
#'   \item{hh_aindex}{Asset index}
#'   \item{female_agriculture}{Female agriculture indicator}
#' }
#'
#' @source Dillon, Brian and Alessandra Voena. 2018. "Widows' Land Rights
#' and Agricultural Investment." \emph{Journal of Development Economics}
#' 135: 449-460. \doi{10.1016/j.jdeveco.2018.08.006}
#'
#' @examples
#' \dontrun{
#' widows <- grossman::load("widows")
#' }
#'
#' @name widows
#' @docType data
#' @keywords datasets
NULL
