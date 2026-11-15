library(tidyverse)
library(here)

here::i_am("code/tableone.R")

library(labelled)

cleaned_data <- readRDS(here("data", "cleaned_data.RDS"))

var_label(cleaned_data) <- list(
  max_ground_temp..C. = "Max Ground Temperature (C)",
  min_ground_temp..C. = "Min Ground Temperature (C)",
  max_air_temp..C. = "Max Air Temperature (C)",
  min_air_temp..C. = "Min Air Temperature (C)",
  mean_pressure.Pa. = "Average Pressure"
)

library(gtsummary)

tableone <- cleaned_data |>
  select("max_ground_temp..C.", "min_ground_temp..C.", "max_air_temp..C.", "min_air_temp..C.", "mean_pressure.Pa.", "month") |>
  tbl_summary(by = month,
              missing = "no",
              statistic = all_continuous() ~ "{mean} ({sd})") |>
  modify_spanning_header(c("stat_1", "stat_2") ~ "**Conditions by Month**")

saveRDS(
  tableone,
  file = here::here("output/tableone_final.RDS")
)
