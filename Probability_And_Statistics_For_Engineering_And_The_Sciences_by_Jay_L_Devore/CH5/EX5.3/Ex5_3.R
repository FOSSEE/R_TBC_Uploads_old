#Ex5.3, Page 196
#Answers may ary slightly due to rounding off of values

f<-function(x,y) {(6/5)*(x+y^2)}

#To check whether pdf is legitimate
check_val<-integrate(function(y) {sapply(y,function(y) {integrate(function(x) f(x,y),0,1)$value})},0,1)
if(check_val$value==1) cat("PDF is legitimate\n\n")

#P(0<=X<=1/4,0<=Y<=1/4)
low1<-0
high1<-1/4
low2<-0
high2<-1/4
integral<-integrate(function(y) {sapply(y,function(y) {integrate(function(x) f(x,y),low1,high1)$value})},low2,high2)
print(paste("P(0<=X<=1/4,0<=Y<=1/4)=",integral$value))