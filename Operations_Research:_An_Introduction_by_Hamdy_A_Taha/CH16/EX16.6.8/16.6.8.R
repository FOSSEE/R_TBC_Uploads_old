##Chapter 16 : Queuing Systems
##Example 6-8 : Page 662

#Queueing library to process different queueing models
library(queueing)

#Empty matrix table for Machine productivity
McProductivity=matrix(0,2,4)
#Making a matrix for different number of repairpersons
for(i in 1:4){
  #creating a MMc instance with the following parameters
  x=NewInput.MMCKK(lambda=0.5, mu=5, c=i, k=22)
  #Solving the model which returns a list
  y=QueueingModel(x)
  McProductivity[1,i]=(22-y$L)*100/22
  if(i>1){
    McProductivity[2,i]=McProductivity[1,i]-McProductivity[1,i-1]
  }
}
McProductivity