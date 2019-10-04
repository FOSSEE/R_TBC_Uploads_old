#Multiple Linear Regrassion
sumx1=40
sumx2=200
sumx1squar=120
sumx2squar=3000
sumy=723
x1.y=1963
x2.y=8210
x1.x2=500
n=16
XbarX=matrix(c(n,sumx1,sumx2,sumx1,sumx1squar,x1.x2,sumx2,x1.x2,sumx2squar),ncol = 3,byrow = TRUE)
XbarX
Inverse=solve(XbarX)
Xbary=matrix(c(sumy,x1.y,x2.y))
Xbary
b=Inverse%*%Xbary
print("The least square estimation is ")
b
