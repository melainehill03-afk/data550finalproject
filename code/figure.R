here::i_am("code/figure.R")

library(ggplot2)

figure <- ggplot(data_num, aes(x = min_ground_temp..C., y = min_air_temp..C., color = UV_Radiation)) +
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
