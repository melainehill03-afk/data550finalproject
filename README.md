# Project Description

This project analyzes information from the Rover Environmental Monitoring Station (REMS) on Mars. The goal is to gain a better understanding of climate and weather across the year on Mars.

## Generating the Final Report
* Use the Makefile to generate the report (Final_Project.html)

## Code Organization
* `code/data_cleaning.R` - re-formats mars_date_time variable and ensures all variables are read as numeric
* `code/tableone.R` - builds table 1 and stores in output folder as rds file
* `code/figure.R` - builds figure of temperatures and UV radiation and stores in output folder as rds file
* `code/render_report.R` - generates Final_Project.html