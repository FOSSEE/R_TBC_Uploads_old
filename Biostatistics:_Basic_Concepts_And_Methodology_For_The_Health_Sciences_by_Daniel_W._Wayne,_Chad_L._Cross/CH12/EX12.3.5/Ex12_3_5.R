##Exaxmple 12.3.5 Pg.616
##Goodness of fit - Distribution of traits

n = 200
dominant = 43
heterozygous = 125
recessive = 32

Obs_f = c(43,125,32)
Exp_f = c(50,100,50)  #1:2:1 ratio 

chi_sq = sum((Obs_f-Exp_f)^2/Exp_f) ; chi_sq
chi_critical = qchisq(0.95,2) ;chi_critical
p_val = pchisq(0.05,2)  ;p_val

#Since pval < 0.005, we conclude data came from 1:2:1 ratio distribution

