#Page number--10.20
#Example number--10.15

X=c(-1,1)
Y=c(0,1)
X1=c(1/8,2/8)
X2=c(3/8,2/8)
gy=X1+X2
px=c(3/8,5/8)
data.frame(Y,X1,X2,gy)

EX=sum(X*px);EX
EX2=sum(X^2*px);EX2
varX=EX2-EX^2
varX

EY=sum(Y*gy);EY
EY2=sum(Y^2*gy);EY2
varY=EY2-EY^2
varY

EXY=0*-1*1/8+0*1*3/8+1*-1*2/8+1*1*2/8
EXY
covXY=EXY-EX*EY
rXY=covXY/sqrt(varX*varY)
rXY