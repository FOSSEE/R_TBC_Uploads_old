y<-c(.593 ,.142, .329, .691 ,.231 ,.793 ,.519 ,.392, .418 )
ybar = mean(y)
mu0 = 0.3
sigma = sd(y)
n = 9              # sample size 
z = abs((ybar- mu0)/(sigma/sqrt(n)))
print(z)
p_value=2*(1-pnorm(z))
print(p_value)
alpha=0.01
if(p_value>alpha){
  print("we fail to reject H0")
  print(" data do not support the research hypothesis(insufficient evidence).")
}else{
  print("reject H0")
}
 