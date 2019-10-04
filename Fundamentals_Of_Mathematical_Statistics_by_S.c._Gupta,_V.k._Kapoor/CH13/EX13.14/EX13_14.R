#Page number--13.15
#Example number--13.14

#A:: Boys
#i:: Girls
#B:: Successful candidates
#j:: Failed candidates

N=800
Aj=80;iB=260
AB=380;ij=80
Attributes=c("B","j")
A=c(380,80)
i=c(260,80)
Total=c(A[1]+i[1],A[2]+i[2])
data.frame(Attributes,A,i,Total)

Q=(AB*ij-Aj*iB)/(AB*ij+Aj*iB) 		  #Yule's Coefficient of Association
Q

sprintf("The coeficient shows positive association of a low degree between success and failure")






