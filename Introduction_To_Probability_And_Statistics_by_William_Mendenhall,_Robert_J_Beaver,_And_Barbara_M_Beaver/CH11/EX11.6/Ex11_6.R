#values are referred to example 11_4in the textbook
no_breakfast<-c(8,7,9,13,10)
light_breakfast<-c(14,16,12,17,11)
full_breakfast<-c(10,12,16,15,12)
x1_bar <- mean(no_breakfast)
x2_bar <- mean(light_breakfast)
x3_bar <- mean(full_breakfast)

k <- 3;
n1 <- n2 <- n3 <- 5
n <- 15;


total_ss <- (8*8 + 7*7 + 9*9 + 13*13 + 10*10 + 14*14 + 16*16 + 12*12 + 17*17 + 11*11 + 10*10 + 12*12 + 16*16 + 15*15 + 12*12 ) - cm
total_ss
degree_of_freedom <- n-k
degree_of_freedom
sst <- ((x*x + y*y + z*z)/5) - cm
sst
sse  <- total_ss -sst
sse
mse <- sse/(n-k)
s2 <- mse
s <- sqrt(s2)
alpha <- 0.05/2;
t_value <- qt(1-alpha,degree_of_freedom)
t_value
left1 <- round(x1_bar - (t_value * (s/sqrt(n1))),2)
right1 <- round(x1_bar + (t_value * (s/sqrt(n1))),2)
cat("confidence interval for no breakfast are between",left1,"and",right1,"minutes")
left2 <- round((x2_bar - x3_bar) - t_value*(sqrt(s2*((1/n2) + (1/n3)))),2)
right2 <- round((x2_bar - x3_bar) + t_value*(sqrt(s2*((1/n2) + (1/n3)))),2)
cat("confidence interval for the difference in the average attention spans for light versus full breakfast eaters are between",left2,"and",right2,"minutes")
