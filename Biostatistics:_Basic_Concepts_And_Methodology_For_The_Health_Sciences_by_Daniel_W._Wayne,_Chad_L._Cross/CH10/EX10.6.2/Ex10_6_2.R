##Example 10.6.2 Pg.515
##Partial correlation coefficient

w<- c(193.6,137.5,145.4,117,105.4,99.9,74,74.4,112.8,125.4,126.5,115.9,98.8,94.3,99.9,83.3,72.8,83.5,59,87.2,84.4,78.1,51.9,57.1,54.7,78.6,53.7,96,89)
p<- c(6.24,8.03,11.62,7.68,10.72,9.28,6.23,8.67,6.91,7.51,10.01,8.70,5.87,7.96,12.27,7.33,11.17,6.03,7.90,8.27,11.05,7.61,6.21,7.24,8.11,10.05,8.79,10.40,11.72)
s<- c(30.1,22.2,25.7,28.9,27.3,33.4,26.4,17.2,15.9,12.2,30,24,22.6,18.2,11.5,23.9,11.2,15.6,10.6,24.7,25.6,18.4,13.5,12.2,14.8,8.9,14.9,10.3,15.4)

reg = lm(w~p+s)
reg
summary(reg)

res1 = residuals(lm(w~p))
res2 = residuals(lm(s~p))
res3 = residuals(lm(w~s))
res4 = residuals(lm(p~s))
res5 = residuals(lm(p~w))
res6 = residuals(lm(s~w))

# use Spearman correlation coefficient to calculate the all possible partial correlations
p1 = cor(res1,res2,method = "spearman")
p2 = cor(res1,res3,method = "spearman")
p3 = cor(res1,res4,method = "spearman")
p4 = cor(res1,res5,method = "spearman")
p5 = cor(res1,res6,method = "spearman")
p6 = cor(res2,res3,method = "spearman")
p7 = cor(res2,res4,method = "spearman")
p8 = cor(res2,res5,method = "spearman")
p9 = cor(res2,res6,method = "spearman")
p10 = cor(res3,res4,method = "spearman")
p11 = cor(res3,res5,method = "spearman")
p12 = cor(res3,res6,method = "spearman")
p13 = cor(res4,res5,method = "spearman")
p14 = cor(res4,res6,method = "spearman")
p15 = cor(res5,res6,method = "spearman")
p <- c(p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11,p12,p13,p14,p15)
p


#Answers might slightly differ due to approximation



