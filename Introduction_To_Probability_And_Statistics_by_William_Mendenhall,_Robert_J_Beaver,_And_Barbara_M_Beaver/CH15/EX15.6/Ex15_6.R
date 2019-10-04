one <- c(65,87,73,79,81,69)
two <- c(75,69,83,81,72,79,90)
three <- c(59,78,67,62,83,76)
four <- c(94,89,80,88)
k <- 4
kruskal.test(list(one, two, three, four))
h <- kruskal.test(list(one, two, three, four))$statistic
h
df <- k - 1
alpha <- 0.05
x_square_0.05 <- qchisq(1 - alpha, df)
x_square_0.05
if(h >= x_square_0.05){
  print("sufficent evidence to indicate differences")
}else{
  print("there is insufficient evidence to indicate differences in the distributions of achievement test scores for the four teaching techniques")
}
#the answers may slightly vary due to rounding off values