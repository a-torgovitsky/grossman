# grossman

An R package for accessing data used in my courses.

## Installation

```r
install.packages("remotes")
remotes::install_github("a-torgovitsky/grossman")
```

## Usage

```r
# See available datasets
grossman::list()

# Load a dataset
df <- grossman::load("psid")

# Load a variant
df_ub <- grossman::load("psid", variant = "unbalanced")

# View documentation
?psid

# Force re-download (clears cache)
df <- grossman::load("psid", refresh = TRUE)
```

**Important:** Always use the `grossman::` prefix — do not call `library(grossman)`. The package exports functions named `list` and `load`, which would mask base R functions. This is the same pattern as `here::here()` or `remotes::install_github()`.

## Available Datasets

| Dataset    | Description                                              | Rows  | Cols | Variants     |
| ---------- | -------------------------------------------------------- | ----- | ---- | ------------ |
| `bureaucrats` | Village officials in China (He & Wang 2017)              | 2809   | 18  |              |
| `childpen` | Child penalty panel (Cortés & Pan 2023)                    | 54365  | 12  |              |
| `cigs`     | Cigarette sales panel (Abadie et al. 2010)                | 1209   | 7   |              |
| `cookstove` | Cookstove adoption in Kenya (Berkouwer & Dean 2022)      | 7949   | 7   |              |
| `cps`      | IPUMS CPS wage data (Blau & Kahn 2017 sample)            | 48371  | 16  |              |
| `eskom`    | South African rural electrification (Dinkelman 2011)     | 1816   | 18  |              |
| `hurricane` | Hurricane fiscal costs (Deryugina 2017)                  | 49698  | 7   |              |
| `kenyagrid` | Rural electrification RCT (Lee et al. 2020)             | 4368   | 52  |              |
| `kindy`    | Kindergarten & maternal labor (Gelbach 2002)              | 17817  | 23  |              |
| `olyset`   | Bed net pricing experiment (Dupas 2014)                   | 1078   | 4   |              |
| `pisa`     | PISA incentive experiment (Gneezy et al. 2019)            | 1103   | 21  |              |
| `psid`     | PSID earnings & consumption panel (Blundell et al. 2008) | 4566   | 12  | `unbalanced` |
| `queens`   | Monarchs and wars (Dube & Harish 2020)                    | 3586   | 17  |              |
| `redistribution` | Mobility & redistribution (Alesina et al. 2018)    | 9792   | 105 |              |
| `reservations` | Native American reservations (Dippel 2014)            | 182    | 19  |              |
| `tenncare` | TennCare DiD panel (Garthwaite et al. 2014)              | 136    | 29  | `micro`      |
| `thirdkid` | Family size & labor supply (Angrist & Evans 1998)         | 254652 | 34  |              |
| `unions`   | Union wage panel (Vella & Verbeek 1998)                   | 4360   | 36  |              |
| `widows`   | Land inheritance in Zambia (Dillon & Voena 2018)          | 7825   | 16  |              |
