total <- 1000;
prob <- 0.001;
mean <- total * prob;
none_defective <- dpois(0,mean)
cat("probability that none is defective is",none_defective)
three_defective <- dpois(3,mean)
cat("probability that three is defective",three_defective)
four_defective <- dpois(4,mean)
cat("probability that four are defective",four_defective)
#the asnwer may slightly vary due to rounding off