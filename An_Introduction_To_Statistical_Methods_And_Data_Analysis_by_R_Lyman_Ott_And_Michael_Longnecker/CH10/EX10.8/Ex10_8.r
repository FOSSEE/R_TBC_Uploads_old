
data =  rbind(c(38,4), c(14,7) )
              
print(data)
# fisher test
fisher.test(data, alternative="greater")
alpha=0.025
# as pvalue > alpha then  we conclude that there is not
#significant evidence that the proportion of patients obtaining a successful outcome
#is higher for drug PV than for drug P.