#Page.No 8.47- 8.48

library("ltm")

#The data 
low_value<-4.5
high_value<-19.5
step_value<-3
X_breaks<-seq(low_value,high_value,step_value)
X_mid<-seq(low_value+step_value/2, high_value-step_value/2, step_value)

#Trained data
f1<-c(4,4,5,4,3)
data1<-rep(X_mid,f1)

#Untrained data
f2<-c(7,5,14,7,7)
data2<-rep(X_mid,f2)


# Calculation of correlation

f<-f1+f2 # Total frequency
X_mid  # mid point
d<-rep(X_mid,f)

# 0 represents trained and 1 represents untrained groups
# y gives trainded and untrained groups with their respective frequencies
y<-c(rep(0,4),rep(1,7),rep(0,4),rep(1,5),rep(0,5),rep(1,14),rep(0,4),rep(1,7),rep(0,3),rep(1,7))

rbis<-biserial.cor(d,y)
cat("The bi-serial correlation is",rbis,"Negligible Negative")
"The answer given in the book is wrong "

# Book Error 
#negative correlation
# Mean values given differ from the actual mean values
mean(data1)   #  Mp 
mean(data2)   #Mq

