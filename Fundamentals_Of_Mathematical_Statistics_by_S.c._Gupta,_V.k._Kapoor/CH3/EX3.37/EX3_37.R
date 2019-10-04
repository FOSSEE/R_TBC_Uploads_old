#Page number--3.41
#Example number--3.37
#LOAD PACKAGE---->prob

s=cards()
s

#A= Probability that the card drawn is king
#B= Probability that the card drawn is heart
#C= Probability that the card drawn is red card
A=nrow(subset(s,rank=="K"))/nrow(s)
B=nrow(subset(s,suit=="Heart"))/nrow(s)
C=(nrow(s)/2)/nrow(s)				#Total red cards=26(i.e. half of deck)
#D=Probability that the card drawn is king of hearts
#E=Probability that the card drawn is heart
#F=Probability that the card drawn is red king
#G=Probability that the card drawn is king of hearts
D=1/nrow(s)
E=13/nrow(s)	
F=2/nrow(s)	
G=1/nrow(s)
#P=Probability that the card drawn is KING OR HEART OR RED CARD
P=A+B+C-D-E-F+G
P







