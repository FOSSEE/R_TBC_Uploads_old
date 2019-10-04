# Sales Volume
y=c(25,55,50,75,110,138,90,60,10,100)
# % of Ingredients Purchased Directly, 
x=c(10,18,25,40,50,63,42,30,5,55)
# Sxy is the sum of x deviations times y deviations and Sxx is the sum of x deviations squared.

Sxx=(x-mean(x))^2
Sxy=(x-mean(x))*(y-mean(y)) 
 
# least-squares estimates of slope and intercept
Beta1=sum(Sxy)/sum(Sxx)
Beta0=mean(y)-Beta1*mean(x)
 print(Beta1)
 print(Beta0)
