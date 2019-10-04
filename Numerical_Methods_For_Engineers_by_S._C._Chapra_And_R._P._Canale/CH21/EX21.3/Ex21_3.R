g=9.8
#m/s^2; acceleration due to gravity

m=68.1
#kg

c=12.5
#kg/sec; drag coefficient

f <- function(t) {
  g*m*(1-exp(-c*t/m))/c 
}

tval=289.43515
#m

a=0
b=10
fa=f(a)
fb=f(b)

for (i in seq(10,20,10)){
  n=i
  h=(b-a)/n
  cat("No. of segments=",i,"\n","Segment size=",h,"\n")
  j=a+h
  s=0
  while (j<b){
    s=s+f(j)
    j=j+h
  }
  l=(b-a)*(fa+2*s+fb)/(2*n)
  Et=tval-l
  #error
  et=Et*100/tval
  #percent relative error
  cat("Estimated d=",l,"m","\n","et(%)",et,"\n","---------------------------------------------------------\n")
}

for (i in seq(50,100,50)){
  n=i
  h=(b-a)/n
  cat("No. of segments=",i,"\n","Segment size=",h,"\n")
  j=a+h
  s=0
  while (j<b){
    s=s+f(j)
    j=j+h
  }
  l=(b-a)*(fa+2*s+fb)/(2*n)
  Et=tval-l
  #error
  et=Et*100/tval
  #percent relative error
  cat("Estimated d=",l,"m","\n","et(%)",et,"\n","---------------------------------------------------------\n")
}

for (i in seq(100,200,100)){
  n=i
  h=(b-a)/n
  cat("No. of segments=",i,"\n","Segment size=",h,"\n")
  j=a+h
  s=0
  while (j<b){
    s=s+f(j)
    j=j+h
  }
  l=(b-a)*(fa+2*s+fb)/(2*n)
  Et=tval-l
  #error
  et=Et*100/tval
  #percent relative error
  cat("Estimated d=",l,"m","\n","et(%)",et,"\n","---------------------------------------------------------\n")
}

for (i in seq(200,500,300)){
  n=i
  h=(b-a)/n
  cat("No. of segments=",i,"\n","Segment size=",h,"\n")
  j=a+h
  s=0
  while (j<b){
    s=s+f(j)
    j=j+h
  }
  l=(b-a)*(fa+2*s+fb)/(2*n)
  Et=tval-l
  #error
  et=Et*100/tval
  #percent relative error
  cat("Estimated d=",l,"m","\n","et(%)",et,"\n","---------------------------------------------------------\n")
}
for (i in seq(1000,2000,1000)){
  n=i
  h=(b-a)/n
  cat("No. of segments=",i,"\n","Segment size=",h,"\n")
  j=a+h
  s=0
  while (j<b){
    s=s+f(j)
    j=j+h
  }
  l=(b-a)*(fa+2*s+fb)/(2*n)
  Et=tval-l
  #error
  et=Et*100/tval
  #percent relative error
  cat("Estimated d=",l,"m","\n","et(%)",et,"\n","---------------------------------------------------------\n")
}

for (i in seq(2000,5000,3000)){
  n=i
  h=(b-a)/n
  cat("No. of segments=",i,"\n","Segment size=",h,"\n")
  j=a+h
  s=0
  while (j<b){
    s=s+f(j)
    j=j+h
  }
  l=(b-a)*(fa+2*s+fb)/(2*n)
  Et=tval-l
  #error
  et=Et*100/tval
  #percent relative error
  cat("Estimated d=",l,"m","\n","et(%)",et,"\n","---------------------------------------------------------\n")
}

for (i in seq(5000,10000,5000)){
  n=i
  h=(b-a)/n
  cat("No. of segments=",i,"\n","Segment size=",h,"\n")
  j=a+h
  s=0
  while (j<b){
    s=s+f(j)
    j=j+h
  }
  l=(b-a)*(fa+2*s+fb)/(2*n)
  Et=tval-l
  #error
  et=Et*100/tval
  #percent relative error
  cat("Estimated d=",l,"m","\n","et(%)",et,"\n","---------------------------------------------------------\n")
}