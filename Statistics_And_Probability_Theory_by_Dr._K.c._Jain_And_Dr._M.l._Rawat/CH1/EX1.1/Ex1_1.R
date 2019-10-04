#Example 1 Chapter 1
n=50      #n is no. of tickets
r=2       #no of tickets to be choosen
ways_of_selection = length(combn(n,r))/r  
selecting_t10_among_first2 = length(combn(1,1)) * length(combn(n-1,1))
P = selecting_t10_among_first2/ways_of_selection
print(P)
