ace_on_first <- 4/52;
ten_on_second_when_ace_on_first <- 4/51;
ten_on_first <- 4/52;
ace_on_Second <- 4/51;
x <- ace_on_first * ten_on_second_when_ace_on_first
y <- ten_on_first * ace_on_Second
cat("probability of ace on first and ten on second draw",x)
cat("probability of ten on first and ace on second draw",y)
cat("probability that the draw includes an ace and a ten is",x+y)