#Ex12.5, Page 480

y<- function(x) {75.212-0.2094*x}
#If iodine value 100 is selected...
x<-100
print(paste("Point prediction for the resulting cetane number:",round(y(x),digits=2)))