#Page.No 8.44-8.46

library("ltm")

#The data 
low_value<-9.5
high_value<-79.5
step_value<-10
X_breaks<-seq(low_value,high_value,step_value)
X_mid<-seq(low_value+step_value/2, high_value-step_value/2, step_value)

#Trained data
f1<-c(2,2,4,7,4,3,3)
data1<-rep(X_mid,f1)

#Untrained data
f2<-c(8,9,9,9,4,4,7)
data2<-rep(X_mid,f2)


# Calculation of correlation

f<-f1+f2
X_mid
d<-rep(X_mid,f)

# 0 represents trained and 1 represents untrained 
# y gives trainded and untrained groups with their respective frequencies
y<-c(rep(0,2),rep(1,8),rep(0,2),rep(1,9),rep(0,4),rep(1,9),rep(0,7),rep(1,9),rep(0,4),rep(1,4),rep(0,3),rep(1,4),rep(0,3),rep(1,7))

rbis<-biserial.cor(d,y)

cat("Bi-serial correlation is ",rbis,"which is low positive")

"The answer may slightly vary due to roundingoff values"
