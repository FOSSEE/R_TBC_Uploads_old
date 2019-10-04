# Page.No 8.8 - 8.9 

# Spearman's Rank Difference Method
score_in_maths<-c(77,83,85,65,50,60,70,80,78,82)
score_in_science<-c(85,60,70,50,40,45,46,44,42,47)

# Ranks of the scores
R1<-rank(score_in_maths)
R2<-rank(score_in_science)

# Correlation coefficient
P<-cor(R1,R2)
cat("There is moderate positive correlation i.e ",P)
round(P,digits = 1) 
