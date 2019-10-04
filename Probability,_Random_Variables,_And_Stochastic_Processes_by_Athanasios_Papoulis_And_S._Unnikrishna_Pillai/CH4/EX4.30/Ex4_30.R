#page no. 115
#example 4-30



#when lambda=4
lambda=4

p_not_hit=(1+lambda)*exp(-lambda)
print(p_not_hit)
#this is given as 0.0916 which is just round off


#when lambda=5
lambda=5
p_not_hit=(1+lambda)*exp(-lambda)
print(p_not_hit)

#if 5000 shots are fired at the aircraft then the probability of miss 
p_miss=exp(-5)
print(p_miss)