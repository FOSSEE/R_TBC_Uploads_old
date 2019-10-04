# Page.No 8.19

#Given Scores
X<-c(45,48,52,47,49,50,46,51)
Y<-c(70,72,80,75,73,76,71,71)

# Ranks of scores
R1<-rank(X)
R2<-rank(Y)

P=cor(R1,R2)

cat("Hence the correlation coefficient is",P , " i.e moderate")