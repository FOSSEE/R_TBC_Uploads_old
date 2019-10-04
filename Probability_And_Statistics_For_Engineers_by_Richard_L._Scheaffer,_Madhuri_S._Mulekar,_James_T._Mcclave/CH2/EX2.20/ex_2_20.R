wt =c(130,51,640,28,80,110,33,90,36,38,366,84,80,83,70,61,54,44,106,84,39,42,197,102,57)
len =c(94,74,147,58,86,94,63,86,69,72,128,85,82,86,88,72,74,61,90,89,68,76,114,90,78)

pol <- data.frame(len,wt)

#Regression Analysis: Weight versus Length 
#The regression equation is :

line1 <- lm(wt~len,data = pol)
summary(line1)
coef1<- coefficients(line1)

cat("Weight = ",coef1[1] ," + ",coef1[2],"length")

# Output for the linear growth model
plot(len,wt)

#Residual plot
plot(len,resid(line1))


#Regression Analysis: ln(Weight) versus Length 
#The regression equation is :

line2 <- lm(log(wt)~len,data = pol)
summary(line2)
coef2<- coefficients(line2)

cat("log(Weight) = ",coef2[1] ," + ",coef2[2],"length")

#Fit of ln(weight) versus length of alligators
plot(len,log(wt))

#Residual plot
plot(len,resid(line2))


#Regression Analysis: ln(Weight) versus ln(Length )
#The regression equation is :

line3 <- lm(log(wt)~log(len),data = pol)
summary(line3)
coef3<- coefficients(line3)

cat("log(Weight) = ",coef3[1] ," + ",coef3[2],"log(length)")

#Fit of ln(weight) versus ln(length) for alligators
plot(log(len),log(wt))

#Residual plot
plot(log(len),resid(line3))
