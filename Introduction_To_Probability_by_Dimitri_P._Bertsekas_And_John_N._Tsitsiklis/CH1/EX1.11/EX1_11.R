#EX_1_11 
#page25
#initialize variables
decreaseInGroups<- 4
studentDecrease <- 1
studentSlotInGroups <-12
studentSlot <- 15
#initialize the array of probability
alpha<-numeric(3)
#function to calculate probability
probability <- function(students,studSlot)
{prob <- (students/studSlot)
return (prob)
}
for(i in 1:3){
probs <- probability(studentSlotInGroups,studentSlot)
print(probs)
alpha[i]<- probs
print(alpha)
studentSlotInGroups<- studentSlotInGroups - decreaseInGroups
print (studentSlotInGroups)
studentSlot <- studentSlot - studentDecrease
print(studentSlot)
}#loop to calculate probability
#calculating probability of having gaduate student in each group
totalProbability <- alpha[1]*alpha[2]*alpha[3]
print (totalProbability)
