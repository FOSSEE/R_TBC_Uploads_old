before<-c(45,73,46,124,33,57,83,34,26,17)
After<-c(36,60,44,119,35,51,77,29,24,11)
#Null Hypothesis:mu=0#There is no difference in mean of data there for the program is not effective
#Alternative hypothesis: mu>0 the program is effective
l.o.c=0.05
t0.05=qt(1-0.05,9)
t0.05
#Criterion:Reject Null Hypothesis if t>t0.05 or 1.833 for df=9
#t calculation
t.test(before,After,paired=TRUE)
print("hence we reject Null hypothesis because t>t0.05")
print("There for the safety program is effective")

