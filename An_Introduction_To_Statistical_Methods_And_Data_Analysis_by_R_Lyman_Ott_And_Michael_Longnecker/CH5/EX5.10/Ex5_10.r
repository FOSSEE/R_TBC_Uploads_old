ybar=33
sigma=8.4
n=35
alpha = .05 
# critical value
z.alpha = qnorm(1-alpha) 
z1=function(mu0){
  z=abs((ybar- mu0)/(sigma/sqrt(n)))
   b=pnorm(z.alpha-z)
   return(b)
}
muo=c(33,32,31,30,29,28,27,26,25) 
beta=c(z1(33),z1(32),z1(31),z1(30),z1(29),z1(28),z1(27),z1(26),z1(25))
pwr=1-beta
rbind(muo,beta,pwr) 

 