catch=c(3.6,.8,2.5,2.9,1.4,.9,3.2,2.7,2.2,5.9,3.3,2.9,3.6,2.4,.9,2.0,1.9,3.1,2.6,3.4)
residence=c(92.2,86.7,80.2,87.2,64.9,90.1,60.7,50.9,86.1,90.0,80.4,75.0,70.0,64.6,50.0,50.0,51.2,40.1,45.0,50.0)
size=c(.21,.30,.31,.40,.44,.56,.78,1.21,.34,.40,.52,.66,.78,.91,1.10,1.24,1.47,2.21,2.46,2.80)
access=c(0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1)
structures=c(81,26,52,64,40,22,80,60,30,90,74,50,61,40,22,50,37,61,39,53)
relation = lm(catch~residence+size+access+structures)
print(summary(relation))
anova(relation)

# for reduced model
print(" for reduced model")
relation = lm(catch~residence+size)
print(summary(relation))
anova(relation)
# complete linear regression model :  -2.78 + .0268x1 + .504x2 + .743x3 + .0511x4
# reduced model : -.87 + .0394x1 + .828x2
# test statistic
SSregression_complete=24.0624
SSregression_reduced=2.913
Ssresidual_complete=2.2756
n=20
a=(SSregression_complete-SSregression_reduced)/2
b=(Ssresidual_complete)/(n-5)
F=a/b
print(F)
fvalue=qf(1-.01,2,15)
print(fvalue)
#  The value of the test statistic is much larger than the tabled value, so we have conclusive evidence that the access and structure variables add predictive value