f <- function(x) {
  x^5-3.5*x^4+2.75*x^3+2.125*x^2-3.875*x+1.25 
}

r=-1
s=-1
es=1
#%
n=6
count=1
ear=100
eas=100
a<-c(1.25, -3.875, 2.125, 2.75, -3.5, 1)
b<-matrix(0,n)
c<-matrix(0,n)
while ((ear>es) & (eas>es)){
  b[n]=a[n]
  b[n-1]=a[n-1]+r*b[n]
  for (i in seq(n-2,1,-1)){
    b[i]=a[i]+r*b[i+1]+s*b[i+2]
  }
  c[n]=b[n]
  c[n-1]=b[n-1]+r*c[n]
  for (i in seq((n-2),2,-1)){
    c[i]=b[i]+r*c[i+1]+s*c[i+2]
  }
#c(3)*dr+c(4)*ds=-b(2)
#c(2)*dr+c(3)*ds=-b(1)
ds=((-b[1])+(b[2]*c[2]/c[3]))/(c[3]-(c[4]*c[2]/c[3]))
dr=(-b[2]-c[4]*ds)/c[3]
r=r+dr
s=s+ds
ear=abs(dr/r)*100
eas=abs(ds/s)*100
cat("Iteration:",count,"\n","delata r:",dr,"\n","delata s:",ds,"\n","r:",r,"\n","s:",s,"\n","Error in r:",ear,"\n","Error in s:",eas,"\n","-----------------------------------------------------\n")
count=count+1;
}
x1=(r+(r^2 + 4*s)^0.5)/2
x2=(r-(r^2 + 4*s)^0.5)/2
bracket<-c(x1, x2)
cat("The roots are:",bracket,"The quotient is:","x^3 - 4*x^2 + 5.25*x - 2.5","\n","-----------------------------------------------------\n")
