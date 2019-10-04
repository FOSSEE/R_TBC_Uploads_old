#Chapter 1 - Linear Equations In Linear Algebra
#Balanced Equation
#Page No.39 / 1-27
#Prob 7
#1.6.7

#clear console
cat("\014")

#clear variables
rm(list=ls(all=TRUE))

nahcov<-c(1,1,1,3)
hchov<-c(0,8,6,7)
nachov<-c(3,5,6,7)
hov<-c(0,2,0,1)
cov<-c(0,0,1,2)

nahco=matrix(nahcov,
             nrow=4,
             ncol=1,
             byrow=TRUE)
hcho=matrix(hchov,
             nrow=4,
             ncol=1,
             byrow=TRUE)
nacho=matrix(nachov,
             nrow=4,
             ncol=1,
             byrow=TRUE)
ho=matrix(hov,
          nrow=4,
          ncol=1,
          byrow=TRUE)
co=matrix(cov,
          nrow=4,
          ncol=1,
          byrow=TRUE)

print('nahco3')
print(nahco)
print('h3c6h5o7')
print(hcho)
print('na3c6h5o7')
print(nacho)
print('h2o')
print(ho)
print('co2')
print(co)
zm= matrix(0, nrow = 4, ncol = 1)
av=cbind(nahco,hcho,nacho,ho,co,zm)

print('augmented matrix')
av[,3]=av[,3]*-1
av[,4]=av[,4]*-1
av[,5]=av[,5]*-1
print(av)

amrv<-c(1,0,0,0,-1,0,0,1,0,0,-1/3,0,0,0,1,0,-1/3,0,0,0,0,1,-1,0)
amr=matrix(amrv,
           nrow=4,
           ncol=6,
           byrow=TRUE)
print('reduced augmented matrix')
print(amr)
print('the general solution is :')
print('x1=x5')
print('x2=(1/3)*x5')
print('x3=(1/3)*x5')
print('x4=x5')
print('x5 is free')
print('if x5=3, then')
print('x1=x4=3')
print('x2=x3=1')
print('the balanced equation is :')
print('3NaHCO3+H3C6H5O7 -> Na3C6H5O7+3H20+3C02')