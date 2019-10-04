
# Chapter 14
# Example 14.3 page no. 574 from thr pdf..
# Evaluate Analysis of Variance table and derive conclusion,also test on main effects..

m1 <- c(288,488,670,360,465,720)

m2 <- c(385,482,692,411,521,724)

m3 <- c(488,595,761,462,612,801)

obs <- c(m1,m2,m3)

power_supp <- c(rep(1:3,6))


flow_rate <- c(rep(1,6),rep(2,6),rep(3,6))

dat <- data.frame(obs,power_supp,flow_rate)

d <- aov(obs~factor(flow_rate)*factor(power_supp),data = dat)

summary(d)

cat("p-value for test of interaction is 0.4484 so we conclude there is no significant interaction")

# duncan test can be done by duncan.test, in agricolae library, I am having some problems with the package it is not installing the package and showing some error, so I cannot use duncan.test function..

