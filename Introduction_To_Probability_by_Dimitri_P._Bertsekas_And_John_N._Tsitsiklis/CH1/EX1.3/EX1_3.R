#EX_1_3
#page 11
Dice<- seq(1:4)
d<-0
c<-0
a<- numeric(2)#creating an array
Sample_Space<-expand.grid(Dice,Dice)#creating the sample space
Sum_Matrix <- matrix(nrow=4,ncol=4) #creating a sample matrix
#storing the sum of sample space of rolling 2 dice 
for (i in 1:4)
 { 
    for (j in 1:4)
      {
        a[1]<-i
        a[2]<-j
        Sum_Matrix[i,j]=sum(a)#stores the sum of the sample in the matrix b
        if((Sum_Matrix[i,j]%%2)== 0)#to check whether the sum is even
        {
          print(Sum_Matrix[i,j])
          d <-d+1#count the even sums
        }else
          {
            c<-c+1#count odd sums
        }
    }
}
total_sample_space<- nrow(Sample_Space)#finding the number of sample space
n<-total_sample_space#printing the sample space count
Even_Sum<- d/n
Even_Sum #printing the probability of getting even numbers
Odd_Sum<-c/n
Odd_Sum #printing the probability of getting odd numbers

  
