x1<-c(44, 33, 33, 32, 34, 31, 33, 30, 34, 34, 33, 36, 33, 34, 37)
x2<-c(1.3, 2.2, 2.2, 2.6, 2.0, 1.8, 2.2, 3.6, 1.6, 1.5, 2.2, 1.7, 2.2, 1.3, 2.6)
x3<-c(250, 115, 75, 85, 100, 75, 85, 75, 225, 250, 255, 175, 75, 85, 90)
x4<-c(0.63, 0.59, 0.56, 0.55, 0.54, 0.59, 0.56, 0.46, 0.63, 0.60, 0.63, 0.58, 0.55, 0.57, 0.62)
y<-c(18.1, 19.6, 16.6, 16.4, 16.9, 17.0, 20.0, 16.6, 16.2, 18.5, 18.7, 19.4, 17.6, 18.3, 18.8)
n =length(x1);
x= matrix(1,15, 5);
for (i in 1:15){
  x[i,2]= x1[i]
  x[i,3]= x2[i]
  x[i,4]= x3[i]
  x[i,5]= x4[i]
}

pro1 = t(x)
pro2= pro1%*%x
pro3 = solve(pro2)
pro4 = pro3%*%pro1
pro5 = pro4%*%y
B<-matrix(0,5,15)
for (i in 1:5){
  B[i,1]= 0
  for (k in 1:15){
    B[i,1]=B[i,1]+(pro4[i, k]*y[k])
  }
}
SSR = t(y)
SSR= SSR%*%y
sub = t(B)
sub = sub%*%t(x)
sub= sub%*%y
SSR =SSR[1,1] - sub[1,1]
SSR
xxinv = 0.379;
k= 4;
ts = sqrt((n-k-2)/SSR)*B[2]/0.616;
pvalue = 2*(1- pt(ts, n-k-2))
cat("The p-value is",pvalue)
'
The SSR calculated by R is 19.34 whereas the textbook gives the value as 19.26 , thus the difference in the final answer.
'