#H0 : mu1 =mu2
#H1 : mu1>mu2

sm <- c(35.22,24.44,9)
nm <- c(31.56,20.03,9)

diff_mean = sm[1]-nm[1]
D0=0
alpha=0.05

s = sqrt(((sm[3]-1)*sm[2] + (nm[3]-1)*nm[2])/(sm[3]-1 + nm[3]-1))
t = (diff_mean - D0)/(s*sqrt(1/sm[3] + 1/nm[3]))

compare= qt(alpha,df=sm[3]-1 + nm[3]-1,lower.tail = F)

if(t<compare){
  cat("Hypothesis is accepted");
} else{
  cat("Hypothesis is rejected")
}
