#From Example 8, it is very reasonable to assume that the population is normal
weight<-c(72.2 ,67.8 ,78.0 ,64.4 ,76.3 ,72.3 ,73.1 ,71.7 ,66.2 ,63.3 ,85.4 ,67.4,
          66.3 ,76.3 ,57.7 ,50.3 ,77.4 ,63.1 ,73.9 ,67.4 ,74.7 ,68.2 ,87.4 ,86.4,
          69.4 ,58.0 ,63.3 ,72.7 ,73.6 ,68.8 ,63.3 ,63.3 ,73.0 ,64.8 ,73.1 ,70.9,
          85.9 ,74.4 ,75.9 ,72.3 ,84.3 ,61.8 ,79.2 ,64.3 ,65.4 ,66.7 ,77.2 ,50.0,
          70.3 ,90.4 ,63.9 ,62.1 ,68.2 ,55.1 ,52.6 ,68.5 ,55.2 ,73.5 ,53.7 ,61.7,
          47.9 ,72.3 ,61.1 ,71.8 ,83.1 ,71.2 ,58.8 ,61.8 ,86.8 ,64.5 ,52.3 ,58.3,
          65.9,80.2,75.1,59.9,62.3,48.8,64.3,75.4)
n=80
df=n-1
chi1=qchisq(1-0.975,df)
chi2=qchisq(1-0.025,df)
s=sd(weight)
#Substituting into the formula for the confidence interval for sigma_square yields
Int1=df*(s^2)/chi2
Int2=df*(s^2)/chi1
message(Int1," < sigma_square <",Int2)
message(sqrt(Int1)," < sigma <",sqrt(Int2))
cat("This means we are 95% confident that the interval from 8.29 to 11.35 pounds 
contains sigma")
