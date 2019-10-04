##Example 2.5.3 Pg.46
##Coefficient of correlation

mean1 = 145  #sample of 11 years old
sd1 = 10
mean2 = 80   #sample of 25 years old
sd2 = 10

cv<-function(mean,sd)  #user defined function for coefficient of variation
{cv = sd*100/mean
print(cv)}

cv1 = cv(mean1,sd1)
cv2 = cv(mean2,sd2)

##variation is much higher in 11 year old tan in 25 year old

