#Page.No 8.9 - 8.10

# Rank of students by teachers
teacher1<-c(1,2,3,4,5) 
teacher2<-c(4,3,2,1,5)

r<-cor(teacher1,teacher2)

cat("Their is ",r,"or No correlation")
