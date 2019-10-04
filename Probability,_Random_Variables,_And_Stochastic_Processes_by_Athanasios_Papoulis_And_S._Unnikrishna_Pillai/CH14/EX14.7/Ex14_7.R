#page no. 645
#example 14-7

p_fi_even_ieven=1/3    #if i is even 
p_fi_even_iodd=0       #if i is odd
p_fi_odd_iodd =1/3     #if i is odd
p_fi_odd_ieven=0       #if i is even

hv_even=-(1/3*log(1/3) + 1/3*log(1/3) + 1/3*log(1/3))    #which is log(3)
print(hv_even)   #which is log(3)

hv_b=0.5*log(3) + 0.5*log(3)   #which is log(3)

print(hv_b)     #which is log(3)

cat("Thus, in the absence of any information, our uncertainty about V equals H(V)=log6.")
print("If we know, however, whether at each trial 'even' or 'odd' showed, then our uncertainty is reduced to H(v|B)) = log3")
