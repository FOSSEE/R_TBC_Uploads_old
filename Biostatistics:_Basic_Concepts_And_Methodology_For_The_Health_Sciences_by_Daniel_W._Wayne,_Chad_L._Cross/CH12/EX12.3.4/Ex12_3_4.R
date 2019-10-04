##Exaxmple 12.3.4 Pg.614
## Tests of goodness of fit - Uniform distribution

x <- c("Dec","Jan","Feb","Mar","Apr")
f <- c(62,84,17,16,21)
prop <- 1/length(x)

Obs_f = f  ;Obs_f
Exp_f = prop*sum(f)  ;Exp_f

chi_sq = sum((Obs_f-Exp_f)^2/Exp_f) ; chi_sq
p_val = pchisq(0.05,length(x)-1)  ;p_val

#Since pval < 0.005, we conclude data came from uniform distribution


