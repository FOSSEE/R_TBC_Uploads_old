gpa<-c(3.2,2.7,2.5,3.4,2.2)
x<-c(22,27,24,28,23)
sbs<-c(550,570,525,670,490)
dt<-data.frame("Student"=c("a","b","c","d","e"),"GPA"=gpa,"Age"=x,"State board scores"=sbs)
mo<-lm(dt$State.board.scores ~ dt$GPA +dt$Age)
mo
summary(mo)