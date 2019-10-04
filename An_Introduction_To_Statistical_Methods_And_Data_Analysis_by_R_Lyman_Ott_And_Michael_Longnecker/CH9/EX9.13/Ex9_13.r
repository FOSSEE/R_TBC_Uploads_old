# install package by  writing install.packages("DunnettTests") command in console
# install package by writing install.packages(mvtnorm") command in console
library(DunnettTests)
library(mvtnorm)
alpha=0.05
k=4
v=25
n=6

 cvSUDT(k=4,alpha=0.05,alternative="U",df = 25,corr = .5)
 # max value of critical value is taken 
critical_value=2.28 # approx
sw2=0.0153
# test statistic
D=critical_value*sqrt((2*sw2)/n)
print(D)
# conclusion
yi=c(1.293,1.328,1.415,1.500)
yc=1.175
i=1
while (i<5) {
  if((yi[i]-yc)<D){
    print("Not greater than control")
  }
  else{
    print("greater than control")
  }
  i=i+1
}

