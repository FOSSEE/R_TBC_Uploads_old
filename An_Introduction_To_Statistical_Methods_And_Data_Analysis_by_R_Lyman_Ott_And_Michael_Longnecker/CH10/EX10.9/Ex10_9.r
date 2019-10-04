p_1calf=0.83
p_2calf=0.02
p_0calf=0.15

# event A=  dams gives birth to no healthy progeny ,1 healthy progeny,2 healthy progeny(n1=1,n2=1,n3=1)

P_eventA=(factorial(3)*(p_0calf^1*p_1calf^1*p_2calf^1))/(factorial(1)*factorial(1)*factorial(1))
print(P_eventA)
 # event B= 3 dams give birth to 1 healthy progeny(n1=0,n2=3,n3=0)
P_eventB=(factorial(3)*(p_0calf^0*p_1calf^3*p_2calf^0))/(factorial(0)*factorial(3)*factorial(0))
print(P_eventB)
#  the probability of obtaining exactly three healthy progeny from three dams
p=P_eventA+P_eventB
print(p)