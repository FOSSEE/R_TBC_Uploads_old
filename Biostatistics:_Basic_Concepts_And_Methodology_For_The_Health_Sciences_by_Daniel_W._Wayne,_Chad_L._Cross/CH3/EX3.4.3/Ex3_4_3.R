##Exammple 3.4.3 Pg.71
##Joint Probability of early subjects and no history of mood disorders

disorder <- c("negative","bipolar","unipolar","both")
early <- c(28,19,41,53)
later <- c(35,38,44,60)
freq <- data.frame(disorder,early,later)
freq
prob_AE = freq[1,2]/(sum(early)+sum(later))  #frequency of negative-young subjects/total subjects
prob_AE


