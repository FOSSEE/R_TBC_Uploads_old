#H0 : beta2 =0 , (No quadratic relationship exists
#H1 : beta2 >0 , (The peak power load increases at an increasing rate as the daily maximum temperature increases.) 

x = c(95,82,90,81,99,100,93,95,93,87)
y = c(214,152,156,129,254,266,210,204,213,150)
n=10
k=2
dof=n- (k+1)

pol<- data.frame(x,y)
line <- lm(y~x+I(x^2),data = pol)
summary(line)
T =coef(summary(line))[3,3]
compare= qt(1-0.05,df=dof)
if(T < compare)
{
  cat("Null Hypothesis is accepted")
} else{
  cat("Null Hypothesis is rejected")
}
s=coef(summary(line))[3,2]
t =qt(1- 0.05,df=dof)
beta2 =coef(summary(line))[3,1]

cat(" confidence interval for the parameter beta2 as follows:",beta2- t*s," - ",beta2+ t*s)
