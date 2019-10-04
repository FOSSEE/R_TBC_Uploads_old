# Page.No 8.27 - 8.28

# Scores
X<-c(60,51,43,56,39,48,59,44,37,55)
Y<-c(46,35,35,42,31,34,48,31,30,44)

r<-cor(X,Y,method = "pearson")

cat("coefficient of correlation of the given set is ",r,
    "which is very high positive correlation")
