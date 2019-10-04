#Page number--10.7
#Example number--10.1

X=c(65,66,67,67,68,69,70,72)
Y=c(67,68,65,68,72,72,69,71)
meanX=sum(X)/length(X)
meanX
meanY=sum(Y)/length(Y)
meanY
U=X-meanX
V=Y-meanY
data.frame(X,Y,U,V,U^2,V^2,U*V)
u=sum(U)/length(U)
v=sum(V)/length(V)
covUV=(sum(U*V)-u*v)/length(Y) 			
s.dU=sqrt(1/length(Y)*(sum(U^2)-u^2))
s.dV=sqrt(1/length(Y)*(sum(V^2)-v^2))
rUV=covUV/(s.dU*s.dV)
rUV


