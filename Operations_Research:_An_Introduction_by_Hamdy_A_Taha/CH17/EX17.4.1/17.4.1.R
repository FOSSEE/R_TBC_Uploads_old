##Chapter 17 : Simulation Modelling
##Example 3-3 : Page 691

#inputs for the random number generator
b=9
c=5
m=12


u=numeric()
#initial random  number
u[1]=11

R=numeric()
for(i in 2:4){
  u[i]=(b*u[i-1]+c)%%m
  R[i-1]=u[i]/m
}
R