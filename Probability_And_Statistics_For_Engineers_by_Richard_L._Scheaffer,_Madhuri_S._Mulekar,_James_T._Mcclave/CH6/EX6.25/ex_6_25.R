lifetime_sqroot =c(0.637, 1.531, 0.733, 2.256, 2.364 ,1.601, 0.152 ,1.826 ,1.868, 1.126, 0.828 ,1.184, 0.484 ,1.207, 0.719, 0.715 ,0.474 ,1.525, 1.709, 1.305, 2.186, 1.228, 2.006 ,1.032, 1.802 ,1.668 ,1.230, 0.577, 1.274, 1.623 ,1.313 ,0.542, 1.823, 0.880 ,1.526, 2.535, 1.793 ,2.741, 0.578, 1.360 ,2.868, 1.493 ,1.709, 0.872, 1.032, 0.914 ,1.952 ,0.984 ,2.119, 0.431)

#Exponential density plot

hist(lifetime_sqroot^2,breaks = 9,probability = TRUE,main = "Histogram of Lifetime",xlab = "Lifetime",ylab = "Probability")

# Weibull distribution plot differs from the one given in textbook
#Weibull distribution

hist(lifetime_sqroot,breaks = 12,probability = TRUE,main = "Histogram of Sq root of Lifetime",xlab = "sq root",ylab = "Probability")

