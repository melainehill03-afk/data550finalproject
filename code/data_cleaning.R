here::i_am("code/data_cleaning.R")

library(tidyverse)

# Extract the month from the date-time string
data <- data %>%
  mutate(
    month = as.numeric(
      str_extract(mars_date_time, "(?<=Month )\\d+")
    )
  )

# Ensure specified variables are numeric
cleaned_data <- data %>%
  mutate(
    across(
      c(
        max_ground_temp..C.,
        min_ground_temp..C.,
        max_air_temp..C.,
        min_air_temp..C.,
        mean_pressure.Pa.
      ),
      as.numeric
    )
  )

# Save the cleaned data
saveRDS(
  cleaned_data,
  file = here::here("data/cleaned_data.RDS")
)
