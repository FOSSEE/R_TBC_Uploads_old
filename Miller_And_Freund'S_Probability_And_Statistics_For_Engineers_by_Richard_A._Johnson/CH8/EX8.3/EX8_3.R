#After changing the electrical pricing during peak hours for user havingair-conditioning 
#and with-out it to study the variance ;
#n1=45 homes with Air-Conditioning
n1=45
mean1=204.4 
var1=13825.3
#n2=55 home without it
n2=55
mean2=130.0 
var2=8632.0
#Obtain a 95% confidence interval for delta = mu1 - mu2
alpha=0.05
z.alphahalf=qnorm(1-0.025)
#Hence the Confidence interval is,
Int1=mean1-mean2-z.alphahalf*sqrt((var1/n1)+(var2/n2))
Int1
Int2=mean1-mean2+z.alphahalf*sqrt((var1/n1)+(var2/n2))
Int2
cat("hence The mean on-peak usage for homes with air-conditioning 
is higher than for homes without")

