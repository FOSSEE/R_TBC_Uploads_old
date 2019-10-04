#Page.no 8.18

test_scores1<-c(50,56,59,62,65)
test_scores2<-c(22,34,28,30,32)

# Ranks of the given scores
R1<-rank(test_scores1)
R2<-rank(test_scores2)

P<-cor(R1,R2)
cat("The coefficient of correlation is",P,"which is very low")
