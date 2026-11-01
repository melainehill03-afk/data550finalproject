here::i_am("code/tableone.R")

library(labelled)

var_label(data_num) <- list(
  max_ground_temp..C. = "Max Ground Temperature (C)",
  min_ground_temp..C. = "Min Ground Temperature (C)",
  max_air_temp..C. = "Max Air Temperature (C)",
  min_air_temp..C. = "Min Air Temperature (C)",
  mean_pressure.Pa. = "Average Pressure"
)

library(gtsummary)

tableone <- data_num |>
  select("max_ground_temp..C.", "min_ground_temp..C.", "max_air_temp..C.", "min_air_temp..C.", "mean_pressure.Pa.", "month") |>
  tbl_summary(by = month,
              missing = "no",
              statistic = all_continuous() ~ "{mean} ({sd})") |>
  modify_spanning_header(c("stat_1", "stat_2") ~ "**Conditions by Month**")

saveRDS(
  tableone,
  file = here::here("output/tableone_final.RDS")
)
