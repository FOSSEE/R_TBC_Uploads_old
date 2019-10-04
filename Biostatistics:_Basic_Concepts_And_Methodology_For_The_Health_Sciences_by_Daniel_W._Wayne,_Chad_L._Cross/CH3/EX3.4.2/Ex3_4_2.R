##Example 3.4.2 Pg.70
##Conditional Probability
##A = event that family has no history of mood disorders
##E = event that subject is <18 years

disorder <- c("negative","bipolar","unipolar","both")
early <- c(28,19,41,53)
later <- c(35,38,44,60)
freq <- data.frame(disorder,early,later)
freq

condi_AE = freq[1,2]/sum(early)  #frequency of negative-young subjects/total young subjects
condi_AE


