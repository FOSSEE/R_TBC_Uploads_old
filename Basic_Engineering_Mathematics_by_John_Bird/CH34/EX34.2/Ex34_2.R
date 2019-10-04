#page no. 363

#Load package ------> dice
library(dice)


## Probability of rolling no 4's when rolling three six-sided dice

E=getEventProb(nrolls = 3, # number of dice rolls to make
             ndicePerRoll = 1,# number of dice to use in each dice roll
             nsidesPerDie = 6,# number of sides on each die 
             eventList = list(4),
             orderMatters = FALSE)

print(E)