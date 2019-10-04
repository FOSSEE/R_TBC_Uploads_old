
# Chapter 13
# Example 13.4 page no. 522 from the pdf..
# Contrasts Sum Of Squares Corresponding to orthogonal Contrasts..

# from ex 13.1..
# w1 = mu1+mu2-mu3-mu5, w2 = mu1+mu2+mu3-4mu4+ mu5.
# w3 = mu1 -mu2 , w4 = mu3-mu5.

a <- c(551,457,450,731,499,632,595,580,508,583,633,517,639,615,511,573,648,677,417,449,517,438,415,555,563,631,522,613,656,679)

b <- c(rep(1,6),rep(2,6),rep(3,6),rep(4,6),rep(5,6))

# making a data frame and re-classifying the data.
dat <- data.frame(a,b)
dat$b <- as.factor(dat$b)

# the ANOVA..
l <- lm(a~b,data = dat)
anova(l)

# contrasts coefficients..
contrastmatrix <- cbind(c(1,1,-1,0,-1),c(1,1,1,-4,1),c(1,-1,0,0,0),
                        c(0,0,1,0,-1))
contrasts(dat$b) <- contrastmatrix


l_contrast <- aov(a~b,data = dat)


print("The Analysis of Variance Table Using ortogonal contrats is:")
summary(l_contrast, split = list(b = list("(1,2)vs (3,5)"=1,"1,2,3,5 vs 4"=2)))






