total_bottles <- 12;
spoiled_wine <- 3;
sample <- 4;
prob_zero <- (choose(spoiled_wine,0) * choose(total_bottles - spoiled_wine,(sample - 0)))/choose(total_bottles,sample)
cat("probability distribution of no bottle of spoiled wine is",prob_zero)
prob_one <- (choose(spoiled_wine,1) * choose(total_bottles - spoiled_wine,(sample - 1)))/choose(total_bottles,sample)
cat("probability distribution of  one bottle of spoiled wine in sample is",prob_one)
prob_two <- (choose(spoiled_wine,2) * choose(total_bottles - spoiled_wine,(sample - 2)))/choose(total_bottles,sample)
cat("probability distribution of  two bottle of spoiled wine in sample is",prob_two)
prob_three <- (choose(spoiled_wine,3) * choose(total_bottles - spoiled_wine,(sample - 3)))/choose(total_bottles,sample)
cat("probability distribution of  three bottle of spoiled wine in sample is",prob_three)
mean = sample * (spoiled_wine/total_bottles)
cat("mean is",mean)
variance <-  sample * (spoiled_wine/total_bottles)*(9/total_bottles)*((total_bottles-sample)/11)
cat("variance is",variance)
#"The answer may slightly vary due to  rounding off values" 


