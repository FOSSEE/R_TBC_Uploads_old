#11 observation of lab
Commercial_lab<-c(27,23,64,44,30,75,26,124,54,30,14)
State_lab<-c(15,13,22,29,31,64,30,64,56,20,21)
t0.025=qt(1-0.025,10)
t0.025
t.test(Commercial_lab,State_lab,paired=TRUE)
cat("This 95% confidence interval just covers 0, so no difference is indicated with this
small sample size")