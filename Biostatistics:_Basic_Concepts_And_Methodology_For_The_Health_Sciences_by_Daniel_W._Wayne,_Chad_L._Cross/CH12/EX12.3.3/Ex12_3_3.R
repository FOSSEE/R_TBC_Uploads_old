##Exaxmple 12.3.3 Pg.611
## Tests of goodness of fit - Poisson distribution

x <- 0:10
f <- c(5,14,15,23,16,9,3,3,1,1,0)
lambda = sum(x*f)/sum(f) ;lambda    #mean=lambda
prob = dpois(x,lambda) ;prob

pooled1 = f[9] + f[10] + f[11]   #pooling last three values since <5
Obs_f = c(f[c(-9,-10,-11)],pooled1)  ;Obs_f
Exp_f = sum(f)*prob
pooled2 = Exp_f[9] + Exp_f[10] + Exp_f[11]   #pooling first two values since <5
Exp_f = c(Exp_f[c(-9,-10,-11)],pooled2) ;Exp_f

dt= data.frame(Obs_f,Exp_f)
dt
sum(Obs_f);sum(Exp_f)
chi_sq = sum((Obs_f-Exp_f)^2/Exp_f) ; chi_sq
p_val = pchisq(0.05,length(x)-3)  ;p_val

#Since pval < 0.005, we conclude data came from poisson distribution
#Answer slightly differ by decimal due to approximation


