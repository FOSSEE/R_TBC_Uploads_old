#page no. 113-114
#example 4-28

k=0:5
p_K_lessthanequal_5=exp(-3)*sum(3^k/factorial(k))
print(p_K_lessthanequal_5)

p_K_greaterthan_5=1- p_K_lessthanequal_5
print(p_K_greaterthan_5)

#in book the answer is given 0.084 which is just round off