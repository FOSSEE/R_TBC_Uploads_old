mean <- 2;
accidents_in_case_one <- 0;
case_one <- round((dpois(accidents_in_case_one,mean)),6)
cat("probability of no accident on this section of highway during a 1-week period is",case_one)
case_two_mean <- 2*mean;
case_two_mean
case_two <- round((dpois(0,case_two_mean)+ dpois(1,case_two_mean) + dpois(2,case_two_mean) + dpois(3,case_two_mean)),6)
cat("probability of atmost three accidetns on this section of highway during a 2-week period is",case_two)
