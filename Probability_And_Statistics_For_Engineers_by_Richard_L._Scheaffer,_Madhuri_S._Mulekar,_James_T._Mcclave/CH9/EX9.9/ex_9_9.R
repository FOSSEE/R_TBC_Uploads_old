# confidence interval =90%

alpha = 1-0.90
p =0.20
n =100
a =qnorm(1 - alpha/2,lower.tail = F)

cat(" the true probability p of finding this microorganism in a sample is somewhere between ", p - a*sqrt(p*(1-p)/n),
    " - ", p + a*sqrt(p*(1-p)/n))
