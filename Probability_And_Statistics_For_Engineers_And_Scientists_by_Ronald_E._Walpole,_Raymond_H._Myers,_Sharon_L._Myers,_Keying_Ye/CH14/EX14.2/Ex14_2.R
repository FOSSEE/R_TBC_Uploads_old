
# Chapter 14
# Example 14.2 page no. 571 from the pdf..
# Single Degree Of Freedom Sum Of Squares..

# to choose 2 orthogonal contrasts to partition the sum of sqaures for missile systems into 
# single-degree-of-freedom components to be used in comparing systems 1 and 2 versus 3 and system 1 with system 2.


v1 <- c(34.0,32.7,32.0,33.2,28.4,29.3)

v2 <- c(30.1,32.8,30.2,29.8,27.3,28.9)

v3 <- c(29.8,26.7,28.7,28.1,29.7,27.3)

v4 <- c(29.0,28.9,27.6,27.8,28.8,29.1)

observations <- c(v1,v2,v3,v4)

prop_type <- c(rep(1,6),rep(2,6),rep(3,6),rep(4,6))

a <- c(rep(1,2),rep(2,2),rep(3,2))

missile_sys <- c(rep(a,4))

dat <- data.frame(observations,prop_type,missile_sys)

dat$missile_sys <- as.factor(dat$missile_sys)

contrastmatrix <- cbind(c(1,1,-2),c(1,-1,0))

contrasts(dat$missile_sys) <- contrastmatrix

missile_contrast <- aov(observations~missile_sys,data = dat)


print("The Sum of Squares for missiles systems to be used in comparing systems 1 and 2 versus 3 and system 1 versus 2 can be seen from the analysis of variance table below.")
summary(missile_contrast, split = list(missile_sys = 
                                   list("(1,2) vs 3"=1,"1 vs 2"=2)))








