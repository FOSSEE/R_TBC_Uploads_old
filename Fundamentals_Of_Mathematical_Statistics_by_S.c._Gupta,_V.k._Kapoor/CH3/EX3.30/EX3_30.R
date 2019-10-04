#Page number--3.39
#Example number--3.30
#LOAD PACKAGE---prob

s=rolldie(2)

#S denotes sum of faces of two die

#Part (a)
subset(s,X1+X2>8)
#Sample Space
#S=9-------->(3,6),(6,3),(4,5)(5,4)
#S=10------->(4,6),(6,4),(5,5)
#S=11------->(5,6),(6,5)
#S=12------->(6,6)
p=nrow(subset(s,X1+X2==9))/nrow(s)+nrow(subset(s,X1+X2==10))/nrow(s)+nrow(subset(s,X1+X2==11))/nrow(s)+nrow(subset(s,X1+X2==12))/nrow(s)
sprintf("Probability that sum greater than 8: %f",p)

#Part(b)
subset(s,X1+X2==7 | X1+X2==11)
#Sample Space
#S=7-------->(1,6),(6,1),(2,5),(5,2),(3,4),(4,3)
#S=11------->(5,6),(6,5)
p1=nrow(subset(s,X1+X2==7))/nrow(s)+nrow(subset(s,X1+X2==11))/nrow(s)
sprintf("Required Probability : %f",1-p1)

