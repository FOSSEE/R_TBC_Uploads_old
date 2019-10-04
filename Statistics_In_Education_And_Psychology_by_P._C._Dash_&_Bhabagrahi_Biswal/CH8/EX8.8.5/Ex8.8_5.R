#Page.No 8.12

# Scores in test
scores_in_oriya<-c(40,40,50,30,60,80,90)
scores_in_Geography<-c(50,60,40,40,50,80,95)

# Ranks 
R1<-rank(scores_in_oriya)
R2<-rank(scores_in_Geography)

P<-cor(R1,R2)

cat("There is High positive correlation i.e ",P)
