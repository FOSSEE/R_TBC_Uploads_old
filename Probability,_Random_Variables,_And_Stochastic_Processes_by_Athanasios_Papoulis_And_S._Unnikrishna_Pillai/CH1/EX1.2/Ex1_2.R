#page no. 7
#LOAD PACKAGE ------->prob
#example 1-2
#function used: rolldie():This function is used to get sample space for the experiment of rolling a die repeatedly.
#               nrow(): Gives the total number of rows 

library(prob)
no_of_favourable_outcome= nrow(subset(s,X1+X2==7))  #outcomes such that their sum equals 7 when two dices are rolled 
total_outcomes=nrow(s)                                   #all possible outcomes 

probablity=no_of_favourable_outcome/total_outcomes
print(probablity)


