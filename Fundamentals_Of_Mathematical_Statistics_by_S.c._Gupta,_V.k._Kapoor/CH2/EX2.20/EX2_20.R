#PAGE NUMBER--2.29
#Example number--2.20

x=seq(0,8,1)
f=c(1,9,26,59,72,52,29,7,1)
cf=cumsum(f)
data.frame(x,f,cf)

sum(f)/2
sprintf("Cumulative frequence just greater than 128 is 167")
sprintf("So, Median = 4")

Q1=sum(f)/4;Q1
sprintf("Cumulative frequence just greater than 64 is 95")
sprintf("So, Q1 = 3")
Q3=3*sum(f)/4;Q3
sprintf("Cumulative frequence just greater than 192 is 219")
sprintf("So, Q3 = 5")
D4=4*sum(f)/10;D4
sprintf("Cumulative frequence just greater than 102.4 is 167")
sprintf("So, D4 = 4")
P27=27*sum(f)/100;P27
sprintf("Cumulative frequence just greater than 69.12 is 95")
sprintf("So, P27 = 3")