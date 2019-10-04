#page no.407
#problem 16
#load package ---->pastecs,----->dyplr
library(dplyr)
library(pastecs)
#funtion used:

term_n = function(a,d,an) #function ---> to find number of terms
{
  return(((an-a)/d)+1)
}

Sn = function(n,a,d) #function --->sum of n terms
{
  return((n/2)*(2*a+(n-1)*d))
}

#given:(0 to 207) AP divisible by 3

a1 = 0 #starting of range
e1 = 207 #end of range

result <- vector("numeric") # prepare a container to store value 
# divisible by 3 from (0 to 207)
for (i in c(a1:e1))
{
  if (i%%3 == 0)
  {
    result[i] <- i
  }         
}

seq = complete.cases(result) #removing the NA values from vector

seq1 = c(result[seq]) #creating new vector

seq2 = array(data = c(seq1))        #sequence (3,6,9....207)
                                    #creating for accessing the 
                                    # values divisible by 3

a = seq2[1]           #first number of sequence
d = seq2[2] - seq2[1] #common difference
an = last(seq2)
n = term_n(a,d,an)
sum_terms = Sn(n,a,d) #sum of n-terms in AP
print(sum_terms)