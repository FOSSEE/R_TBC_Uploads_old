#ZScore = ((X-Xbar)/S)
# Xbar- mean, S- standard deviation
calories<- c(80,100,100,110,130,190,200)
Xbar<- mean(calories)
S <- sd(calories)
Z_score<- (calories - Xbar)/S
Z_score
data<- cbind(calories,Z_score)
