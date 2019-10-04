 
heat_loss <- c(86,80,77 , 78,84,75 ,33,38,43)
temperature <- c(20,20,20,40,40,40,60,60,60)
plot(temperature,heat_loss)
# Apply the lm() function.
relation <- lm(heat_loss~temperature)

print(summary(relation))
 # linear regression model : y= 109-1.07*x
anova(relation)
#  y and y-ycap for the nine observations
cbind( temperature,heat_loss,predict(relation),resid(relation))
plot(predict(relation),resid(relation))

