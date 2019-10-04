#Page number--13.14
#Example number--13.12

#A:: Dark eye-colour of father 
#B:: Dark eye-colour of son

AB=50;Aj=79;iB=89;ij=782

Q=(AB*ij-Aj*iB)/(AB*ij+Aj*iB)		   #Yule's Coefficient of Association
Q

A=AB+Aj;A
B=AB+iB;B
i=iB+ij;i
j=Aj+ij;j
N=A+i
N
AB0=A*B/N;round(AB0)
Aj0=A*j/N;round(Aj0)
iB0=i*B/N;round(iB0)
ij0=i*j/N;round(ij0)






 