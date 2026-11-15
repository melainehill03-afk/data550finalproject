library(rmarkdown)
here::i_am("code/render_report.R")

rmarkdown::render(
  input = here::here("Final_Project.Rmd"),
  output_file = "Final_Project.html",
  output_dir = here::here(),
  knit_root_dir = here::here()
)