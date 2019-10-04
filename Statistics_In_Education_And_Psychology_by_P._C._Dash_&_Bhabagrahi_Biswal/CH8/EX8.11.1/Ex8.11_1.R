#Page.No 8.41 - 8.43

library("ltm")

#The data 
low_value<-9.5
high_value<-34.5
step_value<-5
X_breaks<-seq(low_value,high_value,step_value)
X_mid<-seq(low_value+step_value/2, high_value-step_value/2, step_value)

#Trained data
f1<-c(4,3,6,5,2)
data1<-rep(X_mid,f1)

#Untrained data
f2<-c(8,6,12,10,4)
data2<-rep(X_mid,f2)

# Calculation of correlation

X_mid
f<-f1+f2
d<-rep(X_mid,f)
#d<-c(rep(12,12),rep(17,9),rep(22,18),rep(27,15),rep(32,6))     #Mid points and their total frequency 

# 0 represents trained and 1 represents untrained 
# y gives trainded and untrained groups with their respective frequencies

y<-c(rep(0,4),rep(1,8),rep(0,3),rep(1,6),rep(0,6),rep(1,12),rep(0,5),rep(1,10),rep(0,2),rep(1,4))


biserial.cor(d,y)

"The answer given in the book is wrong"

# Book error 
# mean of trained data 
Mp<-mean(data1)
print(Mp)
"which is correct "

# Mean of Untrained data"
Mq<-mean(data2)
print(Mq)
"They mentioned it as 20.9"

# The difference will be zero hence the whole answer will become zero 
Mp-Mq 
