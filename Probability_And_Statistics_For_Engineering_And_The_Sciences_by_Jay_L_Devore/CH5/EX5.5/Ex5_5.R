#Ex5.5, Page 198

#Joint pdf 
f<-function(x,y) {24*x*y}

val<-Vectorize(function(x) {sapply(x,function(z) {integrate(function(y) f(x,y),0,1-z)$value})})
check_val<-integrate(val,0,1)$value
if(check_val==1)  print(paste("PDF is legitimate"))

#Probability that two types of nuts together make up 50% of the can
#Taking A={(x,y):0<=x<=1,0<=y<=1,x+y<=0.5}
xlow<-0
xhigh<-0.5
integral<-Vectorize(function(x) {sapply(x,function(z) {integrate(function(y) f(x,y),0,0.5-z)$value})})
prob<-integrate(integral,xlow,xhigh)
print(paste("P((X,Y)EA) =",prob$value))
