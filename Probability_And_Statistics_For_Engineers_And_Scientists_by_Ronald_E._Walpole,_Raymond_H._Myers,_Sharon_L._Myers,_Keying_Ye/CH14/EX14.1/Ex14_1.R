
# Chapter 14
# Example 14.1 page no. 571 from the pdf..
# Two Factor Analysis of Variance..

# H0`: alpha1=alpha2=alpha3=0
#H0``:beta1=beta2=beta3=beta4=0
#H0```:(alpha*beta)11=(alpha*beta)12...=(alpha*beta)34=0
# H1`: atleast one of alpha non zero
# H1``: atleast one of the beta non zero
#H1```:atleast one of the (alpha*beta) non zero..

v1 <- c(34.0,32.7,32.0,33.2,28.4,29.3)

v2 <- c(30.1,32.8,30.2,29.8,27.3,28.9)

v3 <- c(29.8,26.7,28.7,28.1,29.7,27.3)

v4 <- c(29.0,28.9,27.6,27.8,28.8,29.1)

observations <- c(v1,v2,v3,v4)

prop_type <- c(rep(1,6),rep(2,6),rep(3,6),rep(4,6))

a <- c(rep(1,2),rep(2,2),rep(3,2))

missile_sys <- c(rep(a,4))

dat <- data.frame(observations,prop_type,missile_sys)

d <- aov(observations~factor(missile_sys)*factor(prop_type),data = dat)   

summary(d) # analysis of variance table..

cat("We reject H0` and conclude that different missile have different propellent rates as p- value is 0.0169")

cat("We reject H0``and conclude that mean propellent rates are not same for 4 propellent types as p- value is 0.0010")

cat("p-value is approx. 0.0513, so interaction is barely significant.")

