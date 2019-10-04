
# Chapter 6
# ex. 6.20 page no. 199 from the pdf..
# Application of Gamma Distribution..


# given - beta= 4, alpha= 2, 
# changes were made to tighten quality control requirement,
# after these 20 months were passed, so we are asked to find that if the quality control tightening was effective..


cat("The p-value for such time is",pgamma(20,shape = 2,scale = 4,lower.tail = F))

print("Since the p- value is less so conditions of gamma distributions with alpha=2,beta=4 are not supported by data, hence we can conclude that quality control work was effective.")





