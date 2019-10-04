#PAGE NUMBER--2.17
#Example number--2.9

variable=c("10-20","20-30","30-40","40-50","50-60","60-70","70-80")
f=c(12,30,NA,65,NA,25,18)
data.frame(variable,f)

# Let frequency of 30-40 be f1
# Let frequency of 50-60 be f1
# sum of f1+f2= q
q=229-(12+30+65+25+18)
#Solving the equation----> 46=40+(114.5-12-30-f1)/65*10
f1=round(solve(10,335))
f1
f2=q-f1
f2








