#Ex6.2, Page 241
#Answers may vary slightly due to rounding off of values

volt<-c(24.46,25.61,26.25,26.42,26.66,27.15,27.31,27.54,27.74,27.94,27.98,28.04,28.28,28.49,28.50,28.87,29.11,29.13,29.50,30.88)

#Estimator1
x1<-mean(volt)
print(paste("Estimator(1):",x1))

#Estimator2
x2<-median(volt)
print(paste("Estimator(2):",x2))

#Estimator3
x3<-(min(volt)+max(volt))/2
print(paste("Estimator(3):",x3))

#Estimator4
volt<-setdiff(volt,c(volt[1],volt[2],volt[19],volt[20]))
x4<-mean(volt)
print(paste("Estimator(4):",x4))
