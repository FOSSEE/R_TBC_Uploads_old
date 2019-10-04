###Exammple 3.4.9 Pg.75
##Marginal Probability of Early age

disorder <- c("negative","bipolar","unipolar","both")
early <- c(28,19,41,53)
later <- c(35,38,44,60)
freq <- data.frame(disorder,early,later)
freq
prob_EA = freq[1,2]/(sum(early)+sum(later))
prob_EA
prob_EB = freq[2,2]/(sum(early)+sum(later))
prob_EB
prob_EC = freq[3,2]/(sum(early)+sum(later))
prob_EC
prob_ED = freq[4,2]/(sum(early)+sum(later))
prob_ED

prob_E = prob_EA + prob_EB + prob_EC + prob_ED  #Marginal Probability
prob_E



