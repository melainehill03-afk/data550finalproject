Final_Project.html: code/render_report.R output/tableone_final.RDS output/figureone_final.RDS
	Rscript code/render_report.R
	
output/tableone_final.RDS: data/cleaned_data.RDS code/tableone.R 
	Rscript code/tableone.R code/data_cleaning.R
	
output/figureone_final.RDS: data/cleaned_data.RDS code/figure.R code/data_cleaning.R
	Rscript code/figure.R code/data_cleaning.R
	
data/cleaned_data.RDS: data/REMS_Mars_Dataset.csv code/data_cleaning.R
	Rscript code/data_cleaning.R