#EX_4_16
#page 23
l<-8#define length of stick as 8
vary<-function(l)
{
  return((l^2)/12)
}#function to calculate var(y)
f<-function(y)
{
  return((y^2)/(12*8))
}
varxy<-1/4*vary(l)
varxy#to print var(x|y)
integral<-integrate(f,0,l)#to calculate E(var(x|y))
Evarxy<-integral$val
Evarxy
varx<-sum(Evarxy,varxy)
varx#to final calcualtion of var(x)
