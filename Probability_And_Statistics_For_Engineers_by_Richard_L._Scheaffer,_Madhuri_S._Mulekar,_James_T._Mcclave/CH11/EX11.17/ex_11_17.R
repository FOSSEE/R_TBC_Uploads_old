#H0 :beta1 =beta2 =0
#H1 :: At least one is nonzero, i.e., the model is useful for predicting Y. The rejection region for this test at is . 

y =c(121,169,172,116,53,177,31,94,72,171,23,177,178,65,146,129,40,167,115,123,44,73,8,90,71,37,111,89,72,35,86,40,44,36,78,47,56,75,46,6)
x1=c(6490,7244,7943,6478,3138,8747,2020,4090,3230,8786,1986,9653,9429,2782,8444,6316,2363,7915,6928,5526,3077,6600,2732,7014,8321,2422,9581,9326,6818,4831,9630,2905,6308,1908,8542,4750,6056,7052,7794,1701)
x2=c(0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1)

fit=lm(y~x1+x2)
x=summary(fit)
coef =coefficients(x)

#a
F_value = 112.9
compare =qf(1-0.05,2,37,lower.tail = F)
if(F_value>compare){
  cat("Null hypothesis is accepted")
} else{
  cat("Null hypothesis is rejected")
}

#b
cat("y =",coef[1]," + ",coef[2],"x1 ",coef[3],"x2")
