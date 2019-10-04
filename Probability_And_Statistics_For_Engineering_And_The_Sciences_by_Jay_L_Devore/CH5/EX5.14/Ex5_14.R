#Ex5.14, Page 207 

#Joint pdf 
f<-function(x,y) {24*x*y}

almonds<-1
cashews<-1.5
peanuts<-0.5

#Total cost of the contents of a can
h<-function(x,y) {almonds*x+cashews*y+(1-x-y)*peanuts}

#Expected total cost
integral<-Vectorize(function(x) {sapply(x,function(z) {integrate(function(y) h(x,y)*f(x,y),0,1-z)$value})})
prob<-integrate(integral,0,1)
print(paste("Expected total cost:$",prob$value))