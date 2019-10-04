##Exammple 3.4.4 Pg.71
##Multiplication rule of early subjects and no history of mood disorders

disorder <- c("negative","bipolar","unipolar","both")
early <- c(28,19,41,53)
later <- c(35,38,44,60)
freq <- data.frame(disorder,early,later)
freq
Prob_E = sum(early)/(sum(early)+sum(later))  #no.of early subjects/total no. of subjects
condi_AE = freq[1,2]/sum(early)  #frequency of negative-young subjects/total young subjects

Prob_AE = Prob_E*condi_AE   #using multiplication rule
Prob_AE


