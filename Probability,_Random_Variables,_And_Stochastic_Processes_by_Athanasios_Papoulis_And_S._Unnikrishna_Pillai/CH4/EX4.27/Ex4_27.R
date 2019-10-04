#page no. 113
#example 4-27

p=10^-3  #probability of faliure (given)
q=1-p
n=10^3   #number of components (given)

p_K=q^n



p_k=exp(-n*p)    #after applying approximation techniques 
print(p_k)