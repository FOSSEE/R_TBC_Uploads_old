##Example 3.4.1 Pg.69
##Probability of member being <18 years of age

disorder <- c("negative","bipolar","unipolar","both")
early <- c(28,19,41,53)
later <- c(35,38,44,60)
freq <- data.frame(disorder,early,later)
freq
Prob_E = sum(early)/(sum(early)+sum(later))  #no.of early subjects/total no. of subjects
Prob_E


