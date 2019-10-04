
# to find the covariance between two variables X and Y

rm("c")

a <- matrix(c(0.04,0,0,0.16,0.10,0,0.20,0.30,0.20), nrow = 3, ncol = 3)


# individual column sum
ax <- apply(a,2,sum)


# indivdual row sum
ay <- apply(a,1,sum)

# E[X]..
ex <- sum(0:2*ax)

# E[Y]..
ey <- sum(0:2*ay)


# E(XY)..
exy <- 0

for(i in 0:2){
  
  for(j in 0:2){
    
    exy <- exy + i*j*a[i+1,j+1]
    
  }
}
Cov <- exy - ex*ey
cat("CoV(X1,X2 =)", Cov)

df<- function(l,m)
{
  (l-m) * (l-m)
}
cat("V(X1) = " , sum(df((0:2),ey)*ay))
cat("V(X2) =" , sum(df((0:2),ex)*ax))

V1 <- sum(df((0:2),ey)*ay)
V2 <- sum(df((0:2),ex)*ax)

Ro <- Cov/(sqrt(V1 * V2))

cat("Correlation = ", Ro)