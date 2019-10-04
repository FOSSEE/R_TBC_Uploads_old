#Let p1 be the probability a visitor to the original page purchases and item and let p2
#be the probability for the modified page
#Hypothesis
#Null hypothesis= p1 = p2
#Alternative hypothesis= p1 < p2
#Level of significance:0.01
#Criterion: Reject the null hypothesis if Z < ??? 2.33 
x1 = 77
n1 = 2841
x2 = 107 
n2 = 2297
Pbar=(x1+x2)/(n1+n2)
Z=(x1/n1-x2/n2)/sqrt(Pbar*(1-Pbar)*(1/n1+1/n2))
Z
cat("Ther for we reject the null hypothesis")
cat("We conclude that the proportion of purchasers is higher for the modified page than the original page.")

