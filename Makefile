Final_Project2.html: code/render_report.R data/REMS_Mars_Dataset.csv output/tableone_final.RDS output/figure_final.RDS
	Rscript code/render_report.R
	
output/tableone_final.RDS: data/REMS_Mars_Dataset.csv code/tableone.R code/data_cleaning.R
	Rscript code/tableone.R code/data_cleaning.R
	
output/figureone_final.RDS: data/REMS_Mars_Dataset.csv code/figure.R code/data_cleaning.R
	Rscript code/figure.R code/data_cleaning.R