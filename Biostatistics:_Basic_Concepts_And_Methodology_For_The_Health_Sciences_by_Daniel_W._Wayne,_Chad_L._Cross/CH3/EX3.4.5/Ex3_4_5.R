##Exammple 3.4.5 Pg.72
##Conditional Probability of early subjects and no history of mood disorders

disorder <- c("negative","bipolar","unipolar","both")
early <- c(28,19,41,53)
later <- c(35,38,44,60)
freq <- data.frame(disorder,early,later)
freq
Prob_E = sum(early)/(sum(early)+sum(later))  #no.of early subjects/total no. of subjects
prob_AE = freq[1,2]/(sum(early)+sum(later))  #frequency of negative-young subjects/total subjects

Condi_AE = prob_AE/Prob_E   #using multiplication rule
Condi_AE


