E=10*10^9
#Pa
I=1.25*10^-5
#m^4
L=3
#m
pi = 3.1415927
for (i in 1:8){
  p=i*pi/L
  P=i^2*(pi)^2*E*I/(L^2*1000)
  cat("n=",i,"\n","p=",p,"m^-2","\n","P=",P,"kN","-----------------------------------------------------\n")
}