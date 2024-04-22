#### Preamble ####
# Purpose: Download and save the data from from the Womens´s Pockets are Inferior paper by Jan Diehm & Amber Thomas. 
# Author: Hari Lee Robledo
# Date: April 2 2023 
# Contact: hari.leerobledo@mail.utoronto.ca 
# License: MIT
# Pre-requisites: None

```{r}
#### Workspace setup ####
#install.packages()
library(tidyverse)
library(readr)
library(jsonlite)
```

``` {r}
#### Download measurements csv data ####
raw_pockets_data <-
  read_csv(
    "https://raw.githubusercontent.com/the-pudding/data/725dc18a59a055891dee25e85652f416b0065bdd/pockets/measurements.csv",
    show_col_types = FALSE,
    skip = 0
  )
```


```{r}
#### Save measurements csv data ####
write_csv(
  x = raw_pockets_data,
  file = here::here("data/raw_data/raw_pockets_data.csv")
)
```

``` {r}
#### Download measurements json data ####
# Code referenced from:chat.openai.com 
github_url <- "https://raw.githubusercontent.com/the-pudding/data/master/pockets/measurementRectangles.json"

# Read the JSON data from GitHub into R
pocket_area_data <- fromJSON(github_url)
```

```{r}
#### Save measurements json data ####
# Code referenced from: chat.openai.com
json_string <- toJSON(pocket_area_data, pretty = TRUE)

# Specify the file path
file_path <- here::here("data/raw_data/pocket_area_data.json")

# Write the JSON data to the file
writeLines(json_string, file_path)
```