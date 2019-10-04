#Page.No 5.14

mean<-c(50,45,40,45) # mean scores in history
no.of.students<-c(20,20,15,30) # no.of students in section 
wm<-weighted.mean(mean,no.of.students)
cat("Combined mean is",wm)
