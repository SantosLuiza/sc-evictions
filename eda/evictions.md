Evictions
================
Luiza Santos
2020-01-30

  - [EDA](#eda)

``` r
# Libraries
library(tidyverse)
library(here)

# Parameters
data <- here::here("data/evictions.rds")
#===============================================================================

# Code

data <- read_rds(data)
```

## EDA

``` r
data %>% 
  drop_na(evictions) %>% 
  arrange(desc(evictions)) %>% 
  top_n(1)
```

    ## Selecting by evictions

    ## # A tibble: 1 x 4
    ##   geoid    year name             evictions
    ##   <chr>   <int> <chr>                <dbl>
    ## 1 4550875  2016 North Charleston     3660.
