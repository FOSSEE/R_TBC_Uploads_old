#page no. 364
#problem 3

n = 10 # number of horses
win <- function(a,b)# a--->number of winner in race
                    # b---> total number of particpants
{
  winner <- a/b
  return(winner)
}
#part(a)
prob_of_winning = win(1,n) 
print(prob_of_winning)

# part(b)
prob_of_two_races = win(1,n) * win(1,n)
print(prob_of_two_races)