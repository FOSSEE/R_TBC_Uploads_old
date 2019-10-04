#Page number--13.15
#Example number--13.15

#A:: Majority
#i:: Minority
#B:: Regular players
#j:: Not Regular players

i=250+200+150
sprintf("No. of minority students: %d",i)
A=120+100+80
sprintf("No. of major students: %d",A)
iB=200+150+90
sprintf("No. of minor regular players: %d",iB)
AB=48+30+12
sprintf("No. of major regular players: %d",AB)

Aj=A-AB;Aj
ij=i-iB;ij

Q=(AB*ij-Aj*iB)/(AB*ij+Aj*iB) 		  #Yule's Coefficient of Association
Q




