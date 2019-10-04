year=c(1790,1800,1810,1820,1830,1840,1850,1860,1870,1880,1890,1900,1910,1920,1930,1940,1950,1960,1970,1980,1990,2000)
pop =c(4.5,6.1,4.3,5.5,7.4,9.8,7.9,10.6,10.9,14.2,17.8,21.5,26.0,29.9,34.7,37.2,42.6,50.6,57.5,64.0,70.3,79.6)

pol <- data.frame(x,y)

line <- lm(pop~year,data = pol)
summary(line)
coef<- coefficients(line)

#Regression Analysis: PopDens versus Year 
#The regression equation is :

cat("Pop_Dens = ",coef[1]," + ",coef[2],"year")


line2 <- lm(log(pop)~year,data = pol)
summary(line2)
coef2<- coefficients(line2)

#Regression Analysis: ln(PopDens) versus Year 
#The regression equation is :

cat("log(y) = ",coef2[1]," + ",coef2[2],"year")
