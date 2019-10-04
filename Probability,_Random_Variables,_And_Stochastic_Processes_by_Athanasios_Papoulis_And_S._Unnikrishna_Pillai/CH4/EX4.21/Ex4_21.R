#page no. 107
#example 4-21

p=0.5
n=10
k=5
q=1-p

#part (a)

p_n_k=choose(n,k)*(p^k)*(q^(n-k))        #usig the "FUNDAMENTAL THEOREM" of Success or Failure of an Event A in n Independent Trials 
print(p_n_k)

#part (b)

pnk=(exp((-(k-n*p)^2)/(2*n*p*q)))/sqrt(2*3.14*n*p*q)         #using "The normal Approximation (DeMoivre-Laplace Theorem)
print(pnk)