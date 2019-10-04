#PAGE NUMBER--2.15
#Example number--2.6

x=c(1,2,3,4,5,6,7,8,9)
f=c(8,10,11,16,20,25,15,9,6)
cf=cumsum(f)
data.frame(x,f,cf)
sum(f)/2
sprintf("Cumulative frequence just greater than 60 is 65")
sprintf("So, Median = 5")