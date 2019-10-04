##Chapter 12 : Deterministic Inventory Modelling
##Example 3-2 : Page 501

#input parameters
D=187.5
h=0.02
K=20
L=2
c1=3
c2=2.5
q=1000
#optimal quantity
ym=sqrt(2*K*D/h)
#function to calculate the least cost
if(q<ym){
  Y=ym
}else{
  x=polyroot(c(2*K*D/h,(2*(c2*D-(c1*D+(K*D/ym)+(h*ym/2) ))/h),1))
  if(Re(x[2])>q){
    Y=q
  }else{
    Y=ym
  }
}
Y