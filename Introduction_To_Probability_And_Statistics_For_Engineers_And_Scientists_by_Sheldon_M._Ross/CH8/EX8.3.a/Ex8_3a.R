noise_var = 4;
noise_mean= 0;
num = 5;
Xbar = 9.5;
u = 8;
statistic = sqrt(num/noise_var)*(Xbar - u);
compare = qnorm(0.975,0, 1);
if(statistic<compare){
  cat("Hypothesis is accepted");
} else{
  cat("Hypothesis is not accepted")
}