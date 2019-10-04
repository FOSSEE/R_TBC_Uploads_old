# CONFIDENCE INTERVAL TO ESTIMATE E (yx) FOR A GIVEN VALUE OF x :
# y_c +/- t*Se*sqrt((1/n)+((x0-x_b)^2)/SS_xx)
# SS_xx = sum(x^2)-(sum(x)^2/n)

no_of_beds <- c(23,29,29,35,42,46,50,54,64,66,76,78)
FTEs <- c(69,95,102,118,126,125,138,178,156,184,176,225)
Hospitals<-data.frame(no_of_beds,FTEs)
Hospitals

a <- lm( FTEs ~ no_of_beds, data=Hospitals)  
a 

data = data.frame(no_of_beds=40)
data

predict(a, data, interval="confidence") 

predict(a, data, interval="predict") 

