#Chapter 6- Orthogonality and Least Squares
#Applications of Inner Product Spaces
#Page No.215 / 6-23
#Prob 1
#6.8.1

#clear console
cat("\014")

#clear variables
rm(list=ls(all=TRUE))

xv<-c(1,-2,1,-1,1,0,1,1,1,2)
x=matrix(xv,5,2,TRUE)
print('X=')
print(x)
yv<-c(0,0,2,4,4)
y=matrix(yv,5,1,TRUE)
print(y)
Wv<-c(1,0,0,0,0,0,2,0,0,0,0,0,2,0,0,0,0,0,2,0,0,0,0,0,1)
W=matrix(Wv,5,5,TRUE)
WX=W %*% x
print('WX=')
print(WX)
Wy=W %*% y
print('Wy=')
print(Wy)
wxtwx=t(WX) %*% WX
print('(WX)^T*(WX)=')
print(wxtwx)
wxtwy=t(WX) %*% Wy
print('(WX)^T*(Wy)=')
print(wxtwy)
betav=solve(wxtwx) %*% (wxtwy)
print('[B0 B1]=')
print(betav)
cat('the equation of the least squares line is y=',betav[1],'+',betav[2],'x')