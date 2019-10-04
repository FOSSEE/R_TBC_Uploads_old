#95% confident that the error is at most 0.04
#(a) we have no idea what the true proportion might be
Z.alpha=qnorm(1-0.025)
E=0.04
n1=1/4*(Z.alpha/E)^2
message("The sample size is: ",ceiling(n1))
#(b)we know that the true proportion does not exceed 0.12
p=0.12
n2=p*(1-p)*(Z.alpha/E)^2
message("The sample size is: ",ceiling(n2))

