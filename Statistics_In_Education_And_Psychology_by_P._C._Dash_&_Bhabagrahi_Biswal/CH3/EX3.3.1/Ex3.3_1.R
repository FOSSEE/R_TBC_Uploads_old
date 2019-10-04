# Page.No 3.4

#(i) Determining Range
scores<-c(10,15,16,17,18,20,22,25,30,35,40,42,45,46,47,48,49,47,48,49,50,15,20,28,33)
HS<-max(scores)
LS<-min(scores)
range<-HS-LS

cat("The range of the frequency distribution is ",range)

#(ii) Determining size of class interval

no.of.classes<-8
size<-range/no.of.classes

cat("The size of the class intervals is ",size)

#(vii) frequency table 

low_value<-9.5
high_value<-54.5
step_value<-5
X_breaks<-seq(low_value,high_value,step_value)
X_mid<-seq(low_value+step_value/2, high_value-step_value/2, step_value)
c<-cut(scores,breaks = X_breaks)
table<-table(c)
data<-data.frame(table)
print(data)

N<-sum(data$Freq)
cat("Total no of frequencies is",N)
