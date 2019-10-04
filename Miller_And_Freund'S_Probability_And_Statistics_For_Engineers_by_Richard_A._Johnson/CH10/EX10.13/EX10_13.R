table<-rbind(c(23,60,29),c(28,79,60),c(9,49,63))
rownames(table) <- c("Poor","Average","Very good")
colnames(table) <- c("Below Average","Average","Above Average")
table
#Null Hypothesis :Performance in training program and sucess in job are independent
#Alternative hypothesis : Performance in training program and sucess in job are dependent
l.O.c=0.01
df=4
chisq0.01=qchisq(1-0.01,df)
Xsq=chisq.test(table)
Xsq
Xsq$expected
#Criterion:Reject The Null Hypothesis if chisq>chisq0.01
#Calculation:
print("since the chisq value exceed the value of chisq0.01 there for we reject the null hypothesis")


