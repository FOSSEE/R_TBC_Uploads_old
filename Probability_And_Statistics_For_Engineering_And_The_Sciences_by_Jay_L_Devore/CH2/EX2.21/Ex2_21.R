#Ex2.21, Page 68

#No of teaching assistants
n<-10
#No of questions in the first exam
k<-4

#To find number of permutations
p<-factorial(n)/factorial(n-k)
cat("The professor could give",p,"different four-question exam papers without using the same graders")