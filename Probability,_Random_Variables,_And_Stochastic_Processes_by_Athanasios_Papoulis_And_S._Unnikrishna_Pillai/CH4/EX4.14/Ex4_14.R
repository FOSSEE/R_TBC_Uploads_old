#page no. 98-99
#example 4-14

#probabilities are found out just by observing the different situation 

# if x>=60

p_M=3/6
p_XM=p_M/p_M
print(p_XM)

#if 40 <= x < 60

p_X=2/6
p_XM=p_X/p_M
print(p_XM)

#if 20 <= x < 40

p_X=1/6
p_XM=p_X/p_M
print(p_XM)

#if x<20

p_XM=0
print(p_XM)