# Page.No 8.16

X<-c(57,58,33,58,60,63,71,63,74,63) # Scores on creativity

Y<-c(92,100,100,98,102,95,100,99,106,104)  # Scores of intelligence

# Ranks of scores
R1<-rank(X)
R2<-rank(Y)

P=cor(R1,R2) # Correlation

cat("Hence the correlation coefficient between creativity 
    and intelligence scores of the student is",P)
