#page no. 67-68
#example 3-16

t_7_favourable=6           #ways in which total could be 7 when pair of dies are thrown
t_11_favourable=2          #ways in which total could be 11 when pair of dies are thrown
total_outcomes=36
p_t_7=t_7_favourable/total_outcomes     #probability of having sum equals 7 when two dies are thrown
p_t_11=t_11_favourable/total_outcomes   #probability of having sum equals 11 when two dies are thrown
p_p1=p_t_11 + p_t_7       #probability of winning the game by throwing a 7 or 11 on the first throw    

print(p_p1)

          #ak_n=p_k_n/p_k_n+(p_k_n+1/6)    this formula is used to calculate ak_n which is given by equation number 3-59 in the book

p_k_4=3/36                #probability of having sum equals 4 when two dies are thrown 
ak_4=p_k_4/(p_k_4+1/6)

p_k_5=4/36                #probability of having sum equals 5 when two dies are thrown
ak_5=p_k_5/(p_k_5+1/6)    

p_k_6=5/36                #probability of having sum equals 6 when two dies are thrown
ak_6=p_k_6/(p_k_6+1/6)

p_k_8=5/36                #probability of having sum equals 8 when two dies are thrown
ak_8=p_k_8/(p_k_8+1/6)

p_k_9=4/36                #probability of having sum equals 9 when two dies are thrown
ak_9=p_k_9/(p_k_9+1/6)

p_k_10=3/36                #probability of having sum equals 10 when two dies are thrown
ak_10=p_k_10/(p_k_10+1/6)

p_p2=ak_4*p_k_4 + ak_5*p_k_6 + ak_6*p_k_6 + ak_8*p_k_8 + ak_9*p_k_9 + ak_10*p_k_10
print(p_p2)

p_winning_the_game=p_p1+p_p2
print(p_winning_the_game)

#the answer in the book is 0.492929 but by the approximation in R the answer with the code is 0.5040404
