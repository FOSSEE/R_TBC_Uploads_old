Child_Too_High <- 0.35;
Child_Right_Amount <- 0.08;
Child_Too_Little <- 0.01;
No_Child_Too_High <- 0.25;
No_Child_Right_Amount <- 0.20;
No_Child_Too_Little <- 0.11;
too_high <- 0.60;
right_ammount <- 0.28;
too_little <- 0.12;
child_college <- Child_Too_High + Child_Too_Little +Child_Right_Amount;
cat("probability that respondent has a child in college is",child_college)
cat("probability that respondent does not have a child in college is",1-child_college)
cat("probability that respondent has child in college and with too high load is",too_high + child_college - Child_Too_High)