regular<-c(7, 10, 9 ,150)
premium<-c(11, 8 ,6 ,175)
res_avail<-c(77, 80)
#total profit(to be maximized)=z=150*x1+175*x2
#total gas used=7*x1+11*x2 (has to be less than 77 m^3/week)
#similarly other constraints are developed
cat("Maximize z=150*x1+175*x2")
cat("subject to")
cat("7*x1+11*x2<=77 (Material constraint)")
cat("10*x1+8*x2<=80 (Time constraint)")
cat("x1<=9 (Regular storage constraint)")
cat("x2<=6 (Premium storage constraint)")
cat("x1,x2>=0 (Positivity constraint)")