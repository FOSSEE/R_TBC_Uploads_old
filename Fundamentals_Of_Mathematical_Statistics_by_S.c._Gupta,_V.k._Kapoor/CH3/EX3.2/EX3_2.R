#Page number--3.7
#Example number--3.2
#LOAD PACKAGE---->prob

s=rolldie(2)
s

#Part (a)
subset(s,X1==X2)
p=nrow(subset(s,X1==X2))/nrow(s)
sprintf("Probability that the two dice show the same number: %f",p)

#Part (b)
subset(s,X1==6)
p=nrow(subset(s,X1==6))/nrow(s)
sprintf("Probability that the first die show 6: %f",p)

#Part (c)
subset(s,X1+X2==8)
p=nrow(subset(s,X1+X2==8))/nrow(s)
sprintf("Probability that the total of numbers on the die is 8: %f",p)

#Part (d)
subset(s,X1+X2>8)
p=nrow(subset(s,X1+X2>8))/nrow(s)
sprintf("Probability that the total of numbers on the die is more than 8: %f",p)

#Part (e)
subset(s,X1+X2==13)
p=nrow(subset(s,X1+X2==13))/nrow(s)
sprintf("Probability : %f",p)
sprintf("This is an impossible event")

#Part (f)
sprintf("This is a certain event.")
sprintf("Probability : 1")



