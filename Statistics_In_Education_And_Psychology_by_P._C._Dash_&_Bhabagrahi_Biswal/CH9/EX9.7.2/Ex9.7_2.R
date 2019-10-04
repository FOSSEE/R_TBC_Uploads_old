# Page.no 9.14

# To compare scores on tow different tests
z1<-scale(70,center =  75,scale = 10)
z2<-scale(60,center =  50,scale = 6)

cat("z-score in mathematics is",z2,
    "which is greater than z-score in general science",z1)
"so his performance is better in mathematics"    