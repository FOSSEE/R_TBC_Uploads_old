# Variance and standard deviation of a Discrete Distribution : 

Prize <- c(1000,100,20,10,4,2,1,0) # x
Probability <- c(.00002,.00063,.00400,.00601,.02403,.08877,.10479,.77175) # P(x)

# x * P(x) :
for(i in 1:8){
  x_Pb <- Prize*Probability  # x * P(x)
}
print(x_Pb)

# sum Of x * P(x) :
x_Pb_s <- sum(x_Pb)
x_Pb_s


# (x - x_Pb_s)^2
for(j in 1:8){
  x_mean_sq <- (Prize - x_Pb_s)^2 
}
print(x_mean_sq)


# (x - x_Pb_s)^2 * P(x) :
for(j in 1:8){
  x_mean_sq_Pb <- (Prize - x_Pb_s)^2 * Probability 
}
print(x_mean_sq_Pb)

# sum of (x - x_Pb_s)^2 * P(x) :
x_mean_sq_Pb_s <- sum(x_mean_sq_Pb)
x_mean_sq_Pb_s

Prize <- cbind(Prize,Probability,x_mean_sq,x_mean_sq_Pb)
View(Prize)

# Variance and Standard deviation :
var <- x_mean_sq_Pb_s
var
sd <- sqrt(var)
sd