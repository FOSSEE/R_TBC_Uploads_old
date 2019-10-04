# t test for slope : 

no_of_beds <- c(23,29,29,35,42,46,50,54,64,66,76,78)
FTEs <- c(69,95,102,118,126,125,138,178,156,184,176,225)
Hospitals<-data.frame(no_of_beds,FTEs)
Hospitals

# critical t value :
qchisq(.01,df = 10)

# least squares equation of the regression line is :
a <- lm( FTEs ~ no_of_beds, data=Hospitals)  
a                    # y_c = 30.91 + 2.23 * x
b <- summary(a)
b

# observed t value :
b$coefficients[6]



 
