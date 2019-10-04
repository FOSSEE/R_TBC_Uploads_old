men = 6;
women = 4;
cat("No of different rankings possible is",factorial(men+women))
women_top4 = factorial(women)*factorial(men);
prob = women_top4/factorial(men+women);
cat("Probability that women receive the top 4 scores is",prob)