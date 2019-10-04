# Correspondence between Means and Model Parameters 

y =c(0.065,0.073,0.068,0.036,0.078,0.082,0.050,0.043,0.048,0.046,0.061,0.062)
x1 =c(0,0,0,1,0,0,1,1,0,0,1,1)
x2 =c(0,0,0,0,1,1,1,1,0,0,0,0)
x3 =c(0,0,0,0,0,0,0,0,1,1,1,1)

# a
# Main effects model 
fit =glm(y~x1+x2+x3)
coef=coefficients(summary.glm(fit))
cat(" The least-squares prediction equation is yv= ",coef[1],coef[2],"x1 + ",coef[3],"x2 ",coef[4],"x3")

# b
# Complete model including interactions
fit1 =glm(y~x1+x2+x3+(x1*x2)+(x1*x3))
coef1=coefficients(summary.glm(fit1))
cat(". The least-squares prediction equation is ",coef1[1],coef1[2],"x1 +",coef1[3],"x2 ",coef1[4],"x3 ",coef1[5],"x1*x2 + ",coef1[6],"x1*x3")

# c
# H0:The interaction terms do not contribute to the model.(beta4 =beta5 =0)
# H1: At least one of interaction parameters is nonzero. 

F_value= 64.04
compare =qf(1- 0.05,2,6)
if(F_value <compare){
  cat("Null hypothesis is accepted")
} else{
  cat("Null hypothesis is rejected")
}
