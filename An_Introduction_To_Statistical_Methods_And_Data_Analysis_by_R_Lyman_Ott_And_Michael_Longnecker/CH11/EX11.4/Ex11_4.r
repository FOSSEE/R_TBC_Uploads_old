soil_ph <- c(3.3,3.4,3.4,3.5,3.6,3.6,3.7,3.7,3.8,3.8,3.9,4.0,4.1,4.2,4.3,4.4,4.5,5.0,5.1,5.2)
grow_ret <- c(17.78,21.59,23.84,15.13,23.45,20.87,17.78,20.09,17.78,12.46,14.95,15.87,17.45,14.35,14.64,17.25,12.57,7.15,7.50,4.34)

# Apply the lm() function.
relation <- lm(grow_ret~soil_ph)

print(summary(relation))
anova(relation)
# The regression equation  : GrowthRet = 47.475 - 7.86 SoilpH
 # The estimated intercept (constant)
beta0=47.475
# estimated slope (Soil pH) 
beta1=-7.859
# least square prediction
y=47.475-7.859*4
print(y)

