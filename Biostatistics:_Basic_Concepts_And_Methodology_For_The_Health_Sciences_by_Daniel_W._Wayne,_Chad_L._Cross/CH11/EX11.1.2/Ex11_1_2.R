##Example 11.1.2 Pg.542
##Correlation for 3 variables

sbp <- c(126,129,126,123,124,125,127,125,123,119,127,126,122,126,125)
weight <- c(125,130,132,200,321,100,138,138,149,180,184,251,197,107,125)
bmi <- c(24.41,23.77,20.07,27.12,39.07,20.90,22.96,24.44,23.33,25.82,26.40,31.37,26.72,20.22,23.62)
dt<-data.frame(sbp,weight,bmi)

#install.packages("PerformanceAnalytics")
library(PerformanceAnalytics)

chart.Correlation(dt) 
##Shows correlation coefficient and significant values

cor.test(sbp,weight)
#result shows cor = -0.289, p value = 0.296 
cor.test(sbp,bmi)
#result shows cor = -0.213, p value = 0.447 
cor.test(bmi,weight)
#result shows cor = 0.962, p value = 0.000 

