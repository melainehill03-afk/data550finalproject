library(tidyverse)
library(here)

here::i_am("code/figure.R")

library(ggplot2)

cleaned_data <- readRDS(here("data", "cleaned_data.RDS"))

figure <- ggplot(cleaned_data, aes(x = min_ground_temp..C., y = min_air_temp..C., color = UV_Radiation)) +
  geom_point() +
  geom_smooth() +
  labs(title = "Minimum Air Temperature vs Ground Temperature (C) by UV Radiation Levels",
       x = "Minimum Ground Temperature (C)",
       y = "Minimum Air Temperature (C)",
       color = "UV Radiation") +
  theme_minimal()

saveRDS(
  figure,
  file = here::here("output/figure_final.RDS")
)
