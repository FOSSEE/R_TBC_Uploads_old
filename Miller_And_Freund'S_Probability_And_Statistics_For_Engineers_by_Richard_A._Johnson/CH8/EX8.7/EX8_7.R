#recycled materials Data for two different location 
Loc1<-c(707,632,604,652,669,674)
Loc2<-c(552,554,484,630,648,610)
#there is Measurements of   6 specimens of recycled materials
n1=n2=6
#delta=mu1-mu2 # where delta is difference in mean strength for materials from the two locations
#Null hypothesis: delta = 0#Same strength
#Alternative hypothesis: delta!= 0#differnt in strength
t0.025=qt(1-0.025,10)
t0.025
#Criterion: Reject the null hypothesis if t < -t0.025 or t > t0.025 where
#t0.025 = 2.228 for 6 + 6 - 2 = 10 degrees of freedom
t.test(Loc1,Loc2)
print("since the value of t is greater then t0.025 there for we reject the null hypothesis")
