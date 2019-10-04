#Page.N# Page.No 8.20

marks_in_maths<-c(50,26,46,25,31,22,29,30,28,18)
marks_in_g.Sci<-c(40,35,34,30,32,28,28,32,29,15)

#Ranks of the marks 
R1<-rank(marks_in_maths)
R2<-rank(marks_in_g.Sci)

P=cor(R1,R2)

cat("Here the coeffient of co-ordinatore",P ,"Highly Positive")
