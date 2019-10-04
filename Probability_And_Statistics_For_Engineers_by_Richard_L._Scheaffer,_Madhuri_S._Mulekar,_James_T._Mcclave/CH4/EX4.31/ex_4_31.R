cat("Prob students enrolled in calculus class", 50/100)
a<- 50/100
cat("Prob students enrolled in class" , 45/100)
b <- 45/100
cat("prob students enrolled in both courses" ,10/100)
c <-10/100
cat("prob students enrolled in atleat one course", a+b-c)
cat("prob of students enrolled in none of the courses", 1-(a+b-c))