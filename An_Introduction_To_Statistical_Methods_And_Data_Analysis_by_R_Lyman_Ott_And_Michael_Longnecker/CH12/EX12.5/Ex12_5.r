y=c(4.3,5.5,6.8,8.0,4.0,5.2,6.6,7.5,2.0,4.0,5.7,6.5)
x1=c(4,5,6,7,4,5,6,7,4,5,6,7)
x2=c(.20,.20,.20,.20,.30,.30,.30,.30,.40,.40,.40,.40)

cbind(sum(y),sum(x1),sum(x2),sum(y*x1),sum(y*x2),sum(x1*x2),sum(x1^2),sum(x2^2))
#  three normal equations for this model 
# 66.1=12*beta0+66*beta1+3.6*beta2
# 383.3=66*beta0+378*beta1+19.8*beta2
#  19.19=3.6*beta0+19.8*beta1+1.16*beta2
relation = lm(y~x1+x2)
print(summary(relation))
anova(relation)
# linear regression model : y=0.667+1.316*x1-8.000*x2
x1=6.5
x2=.35
y=0.667+1.316*x1-8.000*x2
print(y)

