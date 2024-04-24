#### Preamble ####
# Purpose: Clean the data from from the Womens´s Pockets are Inferior paper by Jan Diehm & Amber Thomas.  
# Author: Hari Lee Robledo
# Date: April 2 2023 
# Contact: hari.leerobledo@mail.utoronto.ca 
# License: MIT
# Pre-requisites: 01-download_data.R

```{r}
#### Workspace setup ####
library(tidyverse)
library(jsonlite)
library(readr)
library(janitor)
library(dplyr)
```

```{r}
#### Clean data ####

# Code referenced from: chat.openai.com 

# Clean json file (pocket area measurements)
json_file <- here::here("data/raw_data/pocket_area_data.json")

# Read the JSON data from the file
pocket_area_data <- fromJSON(json_file)

# Change the name of the raw data into the clean data
cleaned_area_data <-
  clean_names(pocket_area_data)

# Filter the data to include only jeans for women and select columns
women_jeans_data <- cleaned_area_data |>
  filter(men_women == "women") |>
  select(
    price,
    pocket_area
  )

women_jeans_data


# Filter the data to include only jeans for men and select columns
men_jeans_data <- cleaned_area_data|>
  filter(men_women == "men") |>
  select(
    price,
    pocket_area
  )

men_jeans_data
```

```{r}
#### Save cleaned data ####
# Code referenced from: chat.openai.com 

# Change from json format to csv
csv_file <- here::here("data/analysis_data/cleaned_area_data.csv")

# Specify file paths
men_csv_file <- here::here("data/analysis_data/men_jeans_data.csv")
women_csv_file <- here::here("data/analysis_data/women_jeans_data.csv")

# Save men_jeans_data to a CSV file
write.csv(men_jeans_data, men_csv_file, row.names = FALSE)

# Save women_jeans_data to a CSV file
write.csv(women_jeans_data, women_csv_file, row.names = FALSE)

```

