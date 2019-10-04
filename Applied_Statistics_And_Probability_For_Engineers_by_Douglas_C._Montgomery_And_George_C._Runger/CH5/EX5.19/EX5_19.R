#Expected Value of a Function of Two Random Variables(Pg no. 174)

y1 = c(0.01,0.02,0.25)
y2 = c(0.02,0.03,0.2)
y3 = c(0.02,0.1,0.05)
y4 = c(0.15,0.1,0.05)

#joint probability matrix
M = matrix(c(y1,y2,y3,y4), nrow = 4, ncol = 3, byrow = TRUE)
ux = 2.35
uy = 2.49
M
sum_total= 0.0
for(i in 1:4)
{
  for(j in 1:3)
  {
    sum_total = sum_total + ((j-ux)*(i-uy)*M[i,j])
  }
}

cat("E[(X-ux)(Y-uy)] =",sum_total)