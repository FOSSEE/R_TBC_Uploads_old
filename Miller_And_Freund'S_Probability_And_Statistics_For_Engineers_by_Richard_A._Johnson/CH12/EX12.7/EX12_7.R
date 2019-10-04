#There are 4 different type of Detergentfor engen.
#There are 3 engine 
#Null hypothesis:alpha1=alpha2=apha3=0 and beta1=beta2=beta3=0
#Alternative hypothesis:The alphas and betas not equal to zero
l.o.c=0.01
#Criteria:For treatment ,reject null hypothesis if F>9.78,the value of F0.01 with df is 3 and 6
#for block reject null hypothesis if F>10.92  for 2 and 6 degrees of freedom
#Calculation
Detergent_A<-c(45,43,51)
Detergent_B<-c(47,46,52)
Detergent_C<-c(48,50,55)
Detergent_D<-c(42,37,49)
data<-c(Detergent_A,Detergent_B,Detergent_C,Detergent_D)
f = c("Item1", "Item2", "Item3")
k = 3 # number of treatment levels 
n = 4 # number of control blocks 
Engines= gl(k, 1, n*k, factor(f))# matching treatment 
Detergents= gl(n, k, k*n) # blocking factor 
av = aov(data ~Detergents+ Engines)
summary(av)
print("Sice FDet exceed the value 9.78 there we Conclude that there is difference in effectivness in Detergent")
print("Since FEn exceed the value 10.92 there for we conclude that there is difference in result obtain by 3 machine ")


