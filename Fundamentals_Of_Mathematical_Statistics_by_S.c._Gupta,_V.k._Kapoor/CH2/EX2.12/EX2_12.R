#PAGE NUMBER--2.21
#Example number--2.12

Class_Interval=c("0-10","10-20","20-30","30-40","40-50","50-60","60-70","70-80")
f=c(5,8,7,12,28,20,10,10)
data.frame(Class_Interval,f)

a=max(f)
sprintf("Maximum frequence: %d",a)
sprintf("Modal class is 40-50")
Mode= 40 + 10*(28-12)/(2*28-12-20)
round(Mode,2)