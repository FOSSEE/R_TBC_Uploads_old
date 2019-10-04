#Ex5.4, Page 197

f<-function(x,y) {(6/5)*(x+y^2)}

#Finding P(1/4<=Y<=3/4) using marginal pdf of Y
xlow<-0
xhigh<-1
ylow<-1/4
yhigh<-3/4
prob<-integrate(function(y) {sapply(y,function(y) {integrate(function(x) f(x,y),xlow,xhigh)$value})},ylow,yhigh)
print(paste("P(1/4<=Y<=3/4)=",prob$value))
