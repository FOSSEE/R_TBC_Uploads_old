#the matrix or the system
b1=-0.01
b2=0.67
b3=-0.44
a<-matrix(data = c(0.3, 0.52, 1,0.5, 1, 1.9,0.1, 0.3, 0.5),nrow = 3,ncol = 3,byrow = TRUE)
a1<-matrix(data = c(a[2,2], a[2,3],a[3,2], a[3,3]),nrow = 2,ncol = 2,byrow = TRUE)
A1=det(a1)
a2<-matrix(data = c(a[2,1], a[2,3],a[3,1], a[3,3]),nrow = 2,ncol = 2,byrow = TRUE)
A2=det(a2)
a3<-matrix(data = c(a[2,1], a[2,2],a[3,1], a[3,2]),nrow = 2,ncol = 2,byrow = TRUE)
A3=det(a3)
D=a[1,1]*A1-a[1,2]*A2+a[1,3]*A3
p<-matrix(data = c(b1, 0.52, 1,b2, 1, 1.9,b3, 0.3, 0.5),nrow = 3,ncol = 3,byrow = TRUE)
q<-matrix(data = c(0.3, b1, 1,0.5, b2, 1.9,0.1, b3, 0.5),nrow = 3,ncol = 3,byrow = TRUE)
r<-matrix(data = c(0.3, 0.52, b1,0.5, 1 ,b2,0.1, 0.3, b3),nrow = 3,ncol = 3,byrow = TRUE)

x1=det(p)/D
x2=det(q)/D
x3=det(r)/D
cat("The values are:","x1=",x1,",x2=",x2,",x3=",x3)