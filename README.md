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
| `cps`      | IPUMS CPS wage data (Blau & Kahn 2017 sample)            | 48371 | 16   |              |
| `eskom`    | South African rural electrification (Dinkelman 2011)     | 1816  | 18   |              |
| `psid`     | PSID earnings & consumption panel (Blundell et al. 2008) | 4566  | 12   | `unbalanced` |
| `tenncare` | TennCare DiD panel (Garthwaite et al. 2014)              | 136   | 29   | `micro`      |
