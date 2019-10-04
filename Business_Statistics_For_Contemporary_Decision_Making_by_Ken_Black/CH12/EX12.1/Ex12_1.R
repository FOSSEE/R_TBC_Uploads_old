# Slope of Regression line : 

no_of_beds <- c(23,29,29,35,42,46,50,54,64,66,76,78)
FTEs <- c(69,95,102,118,126,125,138,178,156,184,176,225)
Hospitals<-data.frame(no_of_beds,FTEs)
Hospitals

# least squares equation of the regression line is :
lm( FTEs ~ no_of_beds, data=Hospitals)   

# y_c = 30.91 + 2.23 * x






