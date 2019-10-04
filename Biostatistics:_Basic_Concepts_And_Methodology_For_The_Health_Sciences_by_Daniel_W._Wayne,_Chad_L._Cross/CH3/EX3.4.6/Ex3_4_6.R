##Exammple 3.4.6 Pg.73
##Probability of early subjects OR no history of mood disorders

disorder <- c("negative","bipolar","unipolar","both")
early <- c(28,19,41,53)
later <- c(35,38,44,60)
freq <- data.frame(disorder,early,later)
freq

Prob_E = sum(early)/(sum(early)+sum(later))  #no.of early subjects/total no. of subjects
Prob_A = (freq[1,2]+freq[1,3])/(sum(early)+sum(later))  #no.of negative subjects/total no. of subjects
prob_AE = freq[1,2]/(sum(early)+sum(later))  #frequency of negative-young subjects/total subjects

Prob_AUE = Prob_A + Prob_E - prob_AE  #By addition rule
Prob_AUE


