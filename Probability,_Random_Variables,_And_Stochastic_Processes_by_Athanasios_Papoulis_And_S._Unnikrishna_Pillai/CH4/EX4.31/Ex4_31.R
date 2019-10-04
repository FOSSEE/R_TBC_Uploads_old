#page no. 115-116
#example 4-31

#the probability of buying a winning ticket 
no_of_winning_tickets=100
total_no_of_tickets=10^6
p=no_of_winning_tickets/total_no_of_tickets     #the probability of buying a winning ticket
print(p)

n=100  #number of ticket purchased 
lambda=n*p

   #part (a)

p_win=1- exp(-lambda)
print(p_win)

   #part (b)

#in this part we have to find lambda such that the probability of winning is >=0.95
#for that lambda should be >=3
#for which n>=30000
p_win=1- exp(-3)
print(p_win)  #probability of winning comes out to be >=0.95 
