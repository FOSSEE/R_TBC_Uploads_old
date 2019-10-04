#Page.No 8.30 - 8.35

X<-c(50,41,42,45,60,43,46,47,48,50,58,45,40,35,30,20,18,15,14,10) # TEST I
Y<-c(80,90,95,96,75,70,50,60,55,50,45,45,40,30,30,25,19,18,17,10) # TEST II

# X table caclculations
low_value<-9.5
high_value<-64.5
step_value<-5
X_breaks<-seq(low_value,high_value,step_value)
X_mid<-seq(low_value+step_value/2, high_value-step_value/2, step_value)
c1<-cut(X,breaks = X_breaks)
table1<-table(c1)
data1<-data.frame(table1)

f1<-data1$Freq   # X values grouped and their frequencies

x_dash<-(X_mid-round(median(X),digits = 0))/step_value # standard values x'

fxdash<-f1*x_dash    #fx'  

fxdashsqr<-fxdash*x_dash# fx'^2


# Claculation of Y variables
low_value<-9.5
high_value<-99.5
step_value<-10
Y_breaks<-seq(low_value,high_value,step_value)
Y_mid<-seq(low_value+step_value/2, high_value-step_value/2, step_value)
c2<-cut(Y,breaks = Y_breaks)
table2<-table(c2)
data2<-data.frame(table2)

f2<-data2$Freq

y_dash<-round(((Y_mid-(median(Y)))/10),digits = 0) # y'

fydash<-f2*y_dash    #fy'

fydashsqr<-fydash*y_dash   #fy'^2

N<-sum(f1)

fxdashydash<-108 # from scatter diagram

# calculation of correlation coefficient

numerator<-(N*sum(fxdashydash))-(sum(fxdash)*sum(fydash))

denominator<-sqrt(((N*sum(fxdashsqr))-((sum(fxdash))^2))*((N*sum(fydashsqr))-((sum(fxdash))^2)))

r<-numerator/denominator

cat("The correlation coefficient is",r,"positive")

"The answer provided in the book is wrong"
