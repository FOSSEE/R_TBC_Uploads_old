#PAGE NUMBER--2.17
#Example number--2.8

Wages_hours=c("Below 3.005","3.005-4.505","4.505-6.005","6.005-7.505","7.505-9.005","9.005 Above")
f=c(0.05*3000,580,0.3*3000,500,0.2*3000,3000-2730)
cf=cumsum(f)
data.frame(Wages_hours,f,cf)

sum(f)/2
sprintf("Cumulative frequence just greater than 1500 is 1630")
sprintf("So, the median class is 4.505-6.005")

median= 4.505 + 1.5/900*(1500-730)
round(median,2)
