
heat_loss <- c(86,80,77 , 78,84,75 ,33,38,43)
temperature <- c(81,81,81,79,79,79,38,38,38)

# Apply the lm() function.
relation <- lm(heat_loss~temperature)

aov(relation)

SSPexp=134
SSresidual=894.5 #calculated in 11.10
SSlack=SSresidual-SSPexp

MSPexp=SSPexp/6
MSlack=SSlack/1
# test statistic
F=MSlack/MSPexp
print(F)
alpha=0.05

fvalue=qf(1-alpha,df1 = 1,df2 = 6)
if(F>fvalue){
  print(" we reject H0 and conclude that there is significant lack of fit for a linear regression model")
}else{
  print("we  do not reject H0 and conclude that there is no significant lack of fit for a linear regression model")
}
