N=20#tOTAL GROUP OF WORKER
n1=12#Worker favor the regulation
n2=8#workers against the regulation
#Find the probability that if two worker select are against the regulation
F1=(n2/N)#For the first selection 
F2=(n2-1)/(N-1)#the second selection from n2-1 and N-1
P=F1*F2#PROBABILITY
print("The probablity that the two selected worker are against the regulation is,")
P