line_A <- c(170,164,140,184,174,142,191,169,161,200);
line_B <- c(201,179,159,195,177,170,183,179,170,212);
n = 10;
x = 1
p_value = 2 * round(pbinom(x,n,0.5),3)             #hypothesized value of p is 0.5
p_value
cat("Reject the hypothesis at 5% level ")
