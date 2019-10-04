g=9.8
#m/s^2; acceleration due to gravity
m=68.1
#kg
c=12.5
#kg/sec; drag coefficient
count=1
v = matrix(0,1)
for (i in (seq(0,12,2))){
  v[count]=g*m*(1-exp(-c*i/m))/c
  cat("v(m/s)=",v[count],"Time(s)=",i)
  count=count+1;
}
cat("v(m/s)=",g*m/c,"Time(s)=","infinity")