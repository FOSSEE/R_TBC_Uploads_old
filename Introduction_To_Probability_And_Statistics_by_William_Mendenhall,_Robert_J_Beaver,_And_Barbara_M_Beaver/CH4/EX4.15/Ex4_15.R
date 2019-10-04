Total_ways <- 10;
Two_out_of_best <- choose(3, 2);
one_out_of_not_best <- choose(2, 1);
cat("Probability of selecting exactly two of best three are",(Two_out_of_best * one_out_of_not_best) / Total_ways)
