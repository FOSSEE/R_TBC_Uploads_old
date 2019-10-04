o1 <- 89
o2 <- 18
o3 <- 12
o4 <- 81
e1 <- 82
e2 <- 20 
e3 <- 8
e4 <- 90
p1 <- 0.41
p2 <- 0.10
p3 <- 0.04
p4 <- 0.45
k <- 4
df <- k -1
alpha <- 0.100
x_square_observed <- ((o1 - e1) * (o1 - e1) / e1) + ((o2 - e2) * (o2 - e2) / e2) + ((o3 - e3) * (o3 - e3) / e3) + ((o4 - e4) * (o4 - e4) / e4)
x_square_observed
x_square_0.100 <-qchisq(1 - alpha, df)   #x-square at alpha = 0.100 using chi- square 
x_square_0.100
if(x_square_observed < x_square_0.100){
  print("p-value is greater than 0.100, do not have sufficient evidence to reject null h0")
  }else{
  print("reject the h0")
}