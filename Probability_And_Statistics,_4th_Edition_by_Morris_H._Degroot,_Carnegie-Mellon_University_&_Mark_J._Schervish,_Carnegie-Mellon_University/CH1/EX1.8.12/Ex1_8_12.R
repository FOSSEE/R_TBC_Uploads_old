# Chapter 1 - Introduction to Probability, Section - 1.8 (Combinatorial Methods), Page No. - 39

# Let possible value of tosses be represented by the vector 'toss'.

toss<-c('H','T')
print(toss)

# "data.farme" function is used in order to create a data frame.
# For more description, type ?data.frame in the console.
# "nrow" and "ncol" functions are used to either assign or find the number of rows and columns in a matrix respectively.
# For more description type, ?nrow and ?ncol in the console.
# Finding all possible toss cominations. They are stored in the matrix 'tosses'.
# 'count' variable is defined for assigning values to 'genotype' matrix.
# Possible sample space.

count<-c(1)
tosses<-matrix(0L,nrow=length(toss),ncol=(2^length(toss)))
for(i in 1:length(toss))
{
  for(j in 1:length(toss))
  {
    tosses[,count]<-c(toss[i],toss[j])
    count=count+1;
  }
}
print(tosses)

# "paste0" function is used to combine strings and numbers for printing them together.
# For more description type, ?paste0 in the console.
# "intersect" function is used to find common elements in the input vectors.
# For more description type, ?intersect in the console.
# "length" function is used to find the number of elements in a vector.
# For more description type, ?length in the console.
# "!=" represents 'not equal to' and "&&" is used to find the 'logical AND' of given inputs.
# A variable 'count' is defined for computation operations.
# Finding probability of each outcome.

for(k in 1:ncol(tosses))
{
  count<-c(1);
  for(l in 1:ncol(tosses))
  {
    if((k!=l)&&(length(intersect(tosses[1:(nrow(tosses)),k],tosses[1:(nrow(tosses)),l]))==2))
    {
      count=count+1;
    }
  }
  print(tosses[,k])
  print(paste0(" has the probability ", count/ncol(tosses)))
}

# The answer may slightly vary due to being represented as a real number rather than a fraction.