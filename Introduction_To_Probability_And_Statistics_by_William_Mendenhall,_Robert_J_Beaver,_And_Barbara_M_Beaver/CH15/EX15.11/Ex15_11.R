xi <- c(7,4,2,6,1,3,8,5)
yi <- c(1,5,3,4,8,7,2,6)
alpha <- 0.05
cor.test(xi, yi)
rs <- cor.test(xi, yi)$estimate
cat("rs is",rs)
p_value <- cor.test(xi, yi)$p.value
if(p_value <= alpha){
  print("null hypothesis is rejected")
}else{
  print("null hypothesis is accepted")
}
