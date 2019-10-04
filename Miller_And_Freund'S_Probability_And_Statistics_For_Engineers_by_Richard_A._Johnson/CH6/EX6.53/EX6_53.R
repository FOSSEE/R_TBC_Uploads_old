var=1.35#population variance  
s=1.4#sample variance
n=20#total no of sample
chi=((n+2)*1.4*1.4)/1.2^2
ceiling(chi)
qchisq(1-0.05,19)
1 -pchisq(30.6, 19)
cat("There for the probability that a good shipmeant 
will erroneously be reject is less then 0.05")


