# Reads in and writes out GEOID, year, name, and evictions data

# Source: https://eviction-lab-data-downloads.s3.amazonaws.com/SC/cities.csv
# Author: Luiza Santos
# Version: 2020-01-30

# Libraries
library(here)
library(tidyverse)

# Parameters
# Input file
file_raw <- "https://eviction-lab-data-downloads.s3.amazonaws.com/SC/cities.csv"

# Variable types
vars_types <-
  cols_only(
    GEOID = col_character(),
    year = col_integer(),
    name = col_character(),
    evictions = col_double()
  )


# Output file
file_out <- here::here("data/evictions.rds")

#===============================================================================

test <- file_raw %>%
  read_csv(
    col_types = vars_types
      ) %>%
  filter(year == 2016) %>%
  rename(geoid = GEOID) %>%
  write_rds(file_out)

