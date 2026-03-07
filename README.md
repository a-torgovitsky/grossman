# grossman

An R package for accessing teaching datasets in econometrics and applied statistics.

## Installation

```r
install.packages("remotes")
remotes::install_github("a-torgovitsky/grossman")
```

## Usage

**Important:** Use the `grossman::` prefix directly. Do not call `library(grossman)`.

```r
# See available datasets
grossman::list()

# Load a dataset
df <- grossman::load("eskom")

# View documentation
?eskom

# Force re-download (clears cache)
df <- grossman::load("eskom", refresh = TRUE)
```

## Available Datasets

| Dataset | Description | Rows | Cols |
|---------|-------------|------|------|
| `eskom` | South African rural electrification (Dinkelman 2011) | 1816 | 18 |
| `example_wages` | Simulated wage data for teaching | 50 | 8 |

## Example Analysis

```r
# Load Dinkelman (2011) electrification data
df <- grossman::load("eskom")

# First stage regression (Table 3, Column 4)
first_stage <- lm(eskom ~ gradient + km_to_grid + hh_dens + hh_pov +
                  pr_female_hh_head + sex_ratio + pr_indian_or_white +
                  km_to_road + km_to_town + pr_hs_men + pr_hs_women +
                  d_water_access + d_toilet + as.factor(district),
                  data = df)
summary(first_stage)
```

## How It Works

Datasets are hosted on GitHub and downloaded on first use. After that, they're cached locally for fast access. Use `grossman::clear_cache()` to clear the cache if needed.

## Why `grossman::`?

The package exports functions named `list` and `load`, which would mask base R functions if you used `library(grossman)`. Using the namespace prefix (`grossman::load()`) avoids this issue, similar to how you'd use `here::here()` or `remotes::install_github()`.
