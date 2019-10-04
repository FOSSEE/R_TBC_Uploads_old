x_value <- 26.5;
total <- 1000;
defective <- 0.02;
reliability <- 0.98;
mean = total * defective;
standard_deviation <-round( sqrt((total * defective) * reliability),2)
approx_prob <- 1 - round(pnorm(x_value, mean, standard_deviation),4)
cat("Approximate probablity of observing 27 or more defective is",approx_prob)
#the answers may slightly vary due to rounding off values 