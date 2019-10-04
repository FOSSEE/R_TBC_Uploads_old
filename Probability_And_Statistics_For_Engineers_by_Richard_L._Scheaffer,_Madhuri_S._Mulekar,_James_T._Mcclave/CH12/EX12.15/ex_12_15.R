y1 =c(9,8,3,4)
y2 =c(5,6,8,7)

observations <- c(y1,y2)
A <- c(rep(1,4),rep(2,4))

a <- c(rep(1,2),rep(2,2))

B <- c(rep(a,2))
dat <- data.frame(observations,A,B)
d <- aov(observations~factor(A)*factor(B),data = dat)   
summary(d)

# NOTE: Sum Sq value for factor(A)*factor(B)= 24.5 and Mean Sq value for A is 0.5 . (misprinted in textbook)

s=sqrt(anova(d)[["Mean Sq"]][4])
# Bonferroni Method ,c=3
alpha =0.05
c=6
k=(alpha/2)/c
t = qt(1-k,df=4)

x= t*s*sqrt(1/2 + 1/2)
cat(" Thus, all six intervals will be of the form : yi_bar - yj_bar +- ",x)
