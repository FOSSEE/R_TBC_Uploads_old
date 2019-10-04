#Page number--13.13
#Example number--13.11

#Part (i)
N=1000
A=470;B=620;AB=320
k=AB-A*B/N 			  
if (k>0) print("A and B are positively associated")

#Part (ii)
A=490;AB=294;i=570;iB=380
N=A+i
B=AB+iB
k=AB-A*B/N
if (k<0) print("A and B are negatively associated")

#Part (iii)
AB=256;iB=768;Aj=48;ij=144
A=AB+Aj
B=AB+iB
N=AB+Aj+iB+ij
k=AB-A*B/N
if (k<0) print("A and B are independent")