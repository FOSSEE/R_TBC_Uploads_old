##Exaxmple 12.3.2 Pg.609
## Tests of goodness of fit - Binomial distribution

x <- 0:10   #no. of paients out of 25 preferring new pain reliever
f <- c(5,6,8,10,10,15,17,10,10,9,0)  #no. of doctors reporting this number
N <- c(0,6,16,30,40,75,102,70,80,81,0) #total number of patients preferring new pain reliever by doctor

p = sum(N)/(25*sum(f)) ; p 

prob = dbinom(x,25,p) ;prob

pooled1 = f[1] + f[2]   #pooling first two values since <5
Obs_f = c(pooled1,f[c(-1,-2)])  ;Obs_f
Exp_f = sum(f)*prob
pooled2 = Exp_f[1] + Exp_f[2]   #pooling first two values since <5
Exp_f = c(pooled2,Exp_f[c(-1,-2)]) ;Exp_f

dt = data.frame(Obs_f,Exp_f)
dt
sum(Obs_f)
sum(Exp_f)

chi_sq = sum((Obs_f-Exp_f)^2/Exp_f) ; chi_sq
p_val = pchisq(0.005,length(x)-2)  ;p_val

#Since pval < 0.005, we conclude data came from binomial distribution
#Answers slightly differ by decimals due to aproximations
