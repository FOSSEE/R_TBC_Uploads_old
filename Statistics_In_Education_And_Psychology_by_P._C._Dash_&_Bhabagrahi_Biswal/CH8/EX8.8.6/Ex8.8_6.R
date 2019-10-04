#Page.no 8.12 - 8.15

# Ranks of five students by examiners
R1<-c(3,2,1,4,5)
R2<-c(4,5,3,2,1)
R3<-c(5,4,2,3,1)

P12<-cor(R1,R2) # Rank correlation between examiner 1 and 2
P23<-cor(R2,R3) # Rank correlation between examiner 2 and 3
P13<-cor(R1,R3) # Rank correlation between examiner 1 and 3

cat("The rank correlation between Examiners is",P12,P13,P23)
# above three correlations P23 have the highest co-relations 
