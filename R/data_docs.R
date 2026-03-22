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
#' # Load the dataset
#' cps <- grossman::load("cps")
#'
#' # Gender wage gap (geometric mean ratio, a la Blau and Kahn)
#' lwf <- mean(log(cps$wage[cps$sex == "Female"]))
#' lwm <- mean(log(cps$wage[cps$sex == "Male"]))
#' exp(lwf - lwm)  # approximately 0.82
#'
#' # Mincer regression
#' lm(log(wage) ~ sex + age + educ, data = cps)
#' }
#'
#' @name cps
#' @docType data
#' @keywords datasets
NULL

# =============================================================================
# Teaching datasets
# =============================================================================

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
#' A micro-level variant with 454,260 individual observations is available via
#' \code{grossman::load("tenncare", variant = "micro")}.
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

#' Child Penalty Dataset
#'
#' PSID panel tracking earnings around first childbirth, for event study
#' analysis of child penalties on labor market outcomes.
#'
#' @format A data frame with 54,365 rows and 12 variables:
#' \describe{
#'   \item{id}{Individual identifier}
#'   \item{year}{Calendar year}
#'   \item{earn}{Annual earnings}
#'   \item{byear}{Birth year of first child}
#'   \item{female}{Female indicator (1=female, 0=male)}
#'   \item{hours}{Annual work hours}
#'   \item{full_time}{Full-time employment indicator}
#'   \item{age}{Age at pregnancy (one year prior)}
#'   \item{educ}{Years of schooling}
#'   \item{industry}{Industry classification}
#'   \item{race}{Race (1=White, 2=Black, 3=Hispanic, 4=Asian, 5=Native American, 7=Other)}
#'   \item{region}{US region (1=NE, 2=MW, 3=S, 4=W)}
#' }
#'
#' @source Kleven, Henrik, Camille Landais, and Jakob Egholt Sogaard. 2019.
#' "Children and Gender Inequality: Evidence from Denmark."
#' \emph{American Economic Journal: Applied Economics} 11(4): 181-209.
#' \doi{10.1257/app.20180010}
#'
#' @examples
#' \dontrun{
#' cp <- grossman::load("childpen")
#' }
#'
#' @name childpen
#' @docType data
#' @keywords datasets
NULL

#' Hurricane Transfers Dataset
#'
#' County-year panel on government transfers and economic outcomes around
#' hurricanes, used to study the fiscal costs of natural disasters.
#'
#' @format A data frame with 49,698 rows and 7 variables:
#' \describe{
#'   \item{county}{5-digit county FIPS code}
#'   \item{year}{Year}
#'   \item{hyear}{Hurricane year}
#'   \item{govtrans}{Log government transfers per capita}
#'   \item{bustrans}{Log business transfers per capita}
#'   \item{emprate}{CBP employment / population aged 15+}
#'   \item{avgwage}{Log average wage/salary}
#' }
#'
#' @source Deryugina, Tatyana. 2017. "The Fiscal Cost of Hurricanes: Disaster
#' Aid versus Social Insurance." \emph{American Economic Journal: Economic
#' Policy} 9(3): 168-198. \doi{10.1257/pol.20140296}
#'
#' @examples
#' \dontrun{
#' hurr <- grossman::load("hurricane")
#' }
#'
#' @name hurricane
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
#'   \item{id}{Household head person id}
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
#' An unbalanced variant with 10,370 observations is available via
#' \code{grossman::load("psid", variant = "unbalanced")}.
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

#' Union Wage Premium Panel (NLSY)
#'
#' Panel data from the National Longitudinal Survey of Youth on union
#' membership, wages, and individual characteristics.
#'
#' @format A data frame with 4,360 rows and 36 variables:
#' \describe{
#'   \item{nr}{Person identifier}
#'   \item{year}{Observation year}
#'   \item{union}{Wage set by collective bargaining}
#'   \item{wage}{Log hourly wage}
#'   \item{hours}{Hours worked (year)}
#'   \item{exper}{Experience (Age - 6 - Schooling)}
#'   \item{school}{Years of schooling}
#'   \item{black}{Black}
#'   \item{hisp}{Hispanic}
#'   \item{mar}{Married}
#' }
#'
#' @source Vella, Francis, and Marno Verbeek. 1998. "Whose Wages Do Unions
#' Raise? A Dynamic Model of Unionism and Wage Rate Determination for Young
#' Men." \emph{Journal of Applied Econometrics} 13(2): 163-183.
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

#' PISA Incentive Experiment
#'
#' Experimental data testing whether financial incentives improve student
#' test performance, comparing US and Chinese schools.
#'
#' @format A data frame with 1,103 rows and 21 variables:
#' \describe{
#'   \item{score}{Test score}
#'   \item{incent}{Treatment: received incentive (1=yes, 0=no)}
#'   \item{us}{United States indicator (1=US, 0=China)}
#'   \item{female}{Female indicator}
#'   \item{group}{Treatment group assignment}
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

#' Widows, Inheritance, and Fertility Dataset
#'
#' Zambian household data on inheritance customs, fertility, and agricultural
#' investment decisions.
#'
#' @format A data frame with 7,825 rows and 16 variables:
#' \describe{
#'   \item{fert}{Total fertilizer applied (kgs)}
#'   \item{noninh}{No inheritance (=1)}
#'   \item{fertsub}{Fertilizer subsidy available (=1)}
#'   \item{hh_landaccess}{Total land area (Ha)}
#'   \item{numadults}{Adult equivalents}
#'   \item{district}{District}
#'   \item{hh_couple}{Couples (=1)}
#' }
#'
#' @source Voena, Alessandra. 2015. "Yours, Mine, and Ours: Do Divorce Laws
#' Affect the Intertemporal Behavior of Married Couples?"
#' \emph{American Economic Review} 105(8): 2295-2332.
#' \doi{10.1257/aer.20120234}
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

#' Third Kid (Same-Sex IV) Dataset
#'
#' Census data on family size and labor supply, using same-sex composition
#' of first two children as an instrument for having a third child.
#'
#' @format A data frame with 254,652 rows and 34 variables:
#' \describe{
#'   \item{kidcount}{Number of children}
#'   \item{morekids}{Had more than 2 kids}
#'   \item{samesex}{First two kids are of same sex (instrument)}
#'   \item{workedm}{Mom worked last year}
#'   \item{incomem}{Mother's labor income}
#'   \item{weeksm1}{Weeks worked last year (mom)}
#'   \item{hourswm}{Usual hours worked per week (mom)}
#'   \item{faminc1}{Family income}
#' }
#'
#' @source Angrist, Joshua D., and William N. Evans. 1998. "Children and
#' Their Parents' Labor Supply: Evidence from Exogenous Variation in Family
#' Size." \emph{American Economic Review} 88(3): 450-477.
#'
#' @examples
#' \dontrun{
#' tk <- grossman::load("thirdkid")
#' }
#'
#' @name thirdkid
#' @docType data
#' @keywords datasets
NULL

#' Kindergarten and Maternal Labor Supply Dataset
#'
#' Data on kindergarten enrollment and maternal labor supply outcomes,
#' using quarter of birth as an instrument for public school enrollment.
#'
#' @format A data frame with 17,817 rows and 23 variables:
#' \describe{
#'   \item{youngest}{Age of youngest child}
#'   \item{public}{Child enrolled in public school}
#'   \item{quarter}{Quarter of birth}
#'   \item{worked}{Worked last week}
#'   \item{hours}{Hours worked last week}
#'   \item{work79}{Employment in 1979}
#'   \item{hours79}{Hours worked in 1979}
#'   \item{salary}{Wage and salary income in 1979}
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

#' Queens and Wars Dataset
#'
#' European polities panel studying whether queens were more likely than
#' kings to engage in warfare, using gender of firstborn as an instrument.
#'
#' @format A data frame with 3,586 rows and 17 variables:
#' \describe{
#'   \item{kingdom}{Polity name}
#'   \item{year}{Year}
#'   \item{inwar}{In war}
#'   \item{queen}{Queen}
#'   \item{fbmale}{First-born male (of previous monarchs)}
#'   \item{century}{Century}
#'   \item{decade}{Decade}
#' }
#'
#' @source Dube, Oeindrila, and S.P. Harish. 2020. "Queens."
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

#' Redistribution and Mobility Perceptions Dataset
#'
#' Survey experiment studying how perceptions of intergenerational mobility
#' affect preferences for redistribution, across five countries.
#'
#' @format A data frame with 9,792 rows and 105 variables:
#' \describe{
#'   \item{respondent_ID}{Respondent ID}
#'   \item{country}{Country}
#'   \item{Treated}{Treatment indicator}
#'   \item{q1_to_q1}{Perceived chance from Q1 to Q1}
#'   \item{government_intervention}{Optimal level of government intervention (1-7)}
#'   \item{income_tax_top1}{Preferred tax rate, top 1\%}
#'   \item{estate_tax_support}{Support for estate tax}
#' }
#'
#' @source Alesina, Alberto, Stefanie Stantcheva, and Edoardo Teso. 2018.
#' "Intergenerational Mobility and Preferences for Redistribution."
#' \emph{American Economic Review} 108(2): 521-554.
#' \doi{10.1257/aer.20162015}
#'
#' @examples
#' \dontrun{
#' redist <- grossman::load("redistribution")
#' }
#'
#' @name redistribution
#' @docType data
#' @keywords datasets
NULL

#' Olyset Bednet Experiment Dataset
#'
#' Village-level data on bed net ownership and usage from a price
#' randomization experiment in Kenya.
#'
#' @format A data frame with 1,078 rows and 4 variables:
#' \describe{
#'   \item{usenet}{Uses bed net (1=yes, 0=no)}
#'   \item{ownnet}{Owns bed net (1=yes, 0=no)}
#'   \item{price}{Price of bed net (Kenyan shillings)}
#'   \item{village}{Village identifier}
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

#' Kenya Grid Electrification RCT Dataset
#'
#' Household panel from a rural electrification randomized controlled trial
#' in Western Kenya, studying the economic and social impacts of grid access.
#'
#' @format A data frame with 4,368 rows and 52 variables:
#' \describe{
#'   \item{hhid}{Household ID}
#'   \item{connected}{Grid connected}
#'   \item{transearly}{Transformer funded early (treatment)}
#'   \item{treated_all}{Any treatment}
#'   \item{emi}{Economic index}
#'   \item{nemi}{Non-economic index}
#'   \item{energy_spending}{Monthly total energy spending (USD)}
#' }
#'
#' @source Lee, Kenneth, Edward Miguel, and Catherine Wolfram. 2020.
#' "Experimental Evidence on the Economics of Rural Electrification."
#' \emph{Journal of Political Economy} 128(4): 1523-1565.
#' \doi{10.1086/705417}
#'
#' @examples
#' \dontrun{
#' kg <- grossman::load("kenyagrid")
#' }
#'
#' @name kenyagrid
#' @docType data
#' @keywords datasets
NULL

#' Cookstove Adoption Dataset
#'
#' Data from a cookstove adoption experiment in Nairobi, collapsed to
#' respondent-level from repeated SMS surveys.
#'
#' @format A data frame with 836 rows and 6 variables:
#' \describe{
#'   \item{respondent_id}{Respondent identifier}
#'   \item{amount_weekly}{Mean weekly charcoal spending (USD)}
#'   \item{jikokoa}{Bought cookstove (1=yes, 0=no)}
#'   \item{wtp}{Willingness to pay (KES)}
#'   \item{amount_weekly_pre}{Pre-adoption charcoal spending (KSH/week)}
#'   \item{price}{Offered price (USD)}
#' }
#'
#' @source Berkouwer, Susanna B., and Joshua T. Dean. 2022. "Credit, Attention,
#' and Externalities in the Adoption of Energy Efficient Technologies by
#' Low-Income Households." \emph{American Economic Review} 112(10): 3291-3330.
#' \doi{10.1257/aer.20210766}
#'
#' @examples
#' \dontrun{
#' cs <- grossman::load("cookstove")
#' }
#'
#' @name cookstove
#' @docType data
#' @keywords datasets
NULL

#' Village Bureaucrats (CGVO) Dataset
#'
#' Village-year panel studying the effects of assigning college graduate
#' village officials (CGVOs) to rural Chinese villages.
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
#' }
#'
#' @source He, Guojun, and Shaoda Wang. 2017. "Do College Graduates Serving
#' as Village Officials Help Rural China?" \emph{American Economic Journal:
#' Applied Economics} 9(4): 186-215. \doi{10.1257/app.20160079}
#'
#' @examples
#' \dontrun{
#' bur <- grossman::load("bureaucrats")
#' }
#'
#' @name bureaucrats
#' @docType data
#' @keywords datasets
NULL

#' Huai River Regression Discontinuity Dataset
#'
#' County-level data on air pollution near China's Huai River, where a
#' historical heating policy creates a sharp discontinuity in PM10 levels.
#'
#' @format A data frame with 154 rows and 4 variables:
#' \describe{
#'   \item{county_code}{County administrative code}
#'   \item{north_huai}{North of Huai River (1=north, 0=south)}
#'   \item{pm10}{PM10 concentration (micrograms per cubic meter)}
#'   \item{dist_huai}{Distance to Huai River (degrees latitude)}
#' }
#'
#' @source Chen, Yuyu, Avraham Ebenstein, Michael Greenstone, and Hongbin Li.
#' 2013. "Evidence on the Impact of Sustained Exposure to Air Pollution on
#' Life Expectancy from China's Huai River Policy." \emph{Proceedings of the
#' National Academy of Sciences} 110(32): 12936-12941.
#' \doi{10.1073/pnas.1300018110}
#'
#' @examples
#' \dontrun{
#' huai <- grossman::load("huai")
#' }
#'
#' @name huai
#' @docType data
#' @keywords datasets
NULL

#' Dippel Reservations IV Dataset
#'
#' Cross-section of Native American reservations studying the effect of
#' forced coexistence between indigenous groups on economic development,
#' using historical precious metal endowments as instruments.
#'
#' @format A data frame with 182 rows and 19 variables:
#' \describe{
#'   \item{tribeid}{Tribe identifier}
#'   \item{per.capita.income}{Per capita income (USD)}
#'   \item{forced}{Forced coexistence indicator}
#'   \item{gold}{Gold resource endowment}
#'   \item{silver}{Silver resource endowment}
#'   \item{historical.centralization}{Historical political centralization}
#'   \item{county.per.capita.income}{County per capita income (USD)}
#'   \item{county.unemployment}{County unemployment rate}
#'   \item{state}{US state}
#' }
#'
#' @source Dippel, Christian. 2014. "Forced Coexistence and Economic
#' Development: Evidence from Native American Reservations."
#' \emph{Econometrica} 82(6): 2131-2165. \doi{10.3982/ECTA11423}
#'
#' @examples
#' \dontrun{
#' dippel <- grossman::load("dippel")
#' }
#'
#' @name dippel
#' @docType data
#' @keywords datasets
NULL
