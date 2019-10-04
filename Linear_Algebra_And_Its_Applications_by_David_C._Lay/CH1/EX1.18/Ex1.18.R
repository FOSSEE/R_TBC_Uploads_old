#Chapter 1 - Linear Equations In Linear Algebra
#Economic Equilibrium
#Page No.38 / 1-26
#Prob 1
#1.6.1

#clear console
cat("\014")

#clear variables
rm(list=ls(all=TRUE))

av<-c(0.8,-0.7,0,-0.8,0.7,0)
a=matrix(av,
         nrow=2,
         ncol=3,
         byrow=TRUE)
print('the augmented matrix is')
print(a)

#row reduce augmented matrix
a[2,]=a[2,]+a[1,]
print(a)
a=a*1.25
print(a)

print('ratio of prices is pg=0.875ps')
print('one equilibrium solution is ps=1000 and pg=875')
print('economic equilibrium is unaffected by a proportional change in prices')