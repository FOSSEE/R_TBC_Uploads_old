# Chapter 1 - Introduction to Probability, Section - 1.8 (Combinatorial Methods), Page No. - 32

# Let the input set be 'A'. 
# In order to find only distinct subsets we need to find combinations of set 'A' taking 'k' elements at a time.
# "combn" function is used to find combinations of a set. For description, type ?combn in the console.

A<-c('a','b','c','d');
k<-c(2);
S<-combn(A,k)

# 'S' is a matrix with the number of columns as the desired number of distinct subsets.
# "ncol" function is used to calculate the number of columns present in the input data structure.
# For description, type ?ncol in the console.

print(ncol(S))

# "nrow" function is used to calculate the number of rows present in the input data structure.
# For description, type ?nrow in the console.
# Finding all possible subsets of two.
# "matrix" and "vector" functions are used to define a matrix and a vector respectively.
# For description, type ?matrix and ?vector in the console.
# "length" function is used to find the number of elements in a vector.
# For description, type ?length in the console.
# "intersect" function is used to find the intersection of elements in a vector.
# For description, type ?intersect in the console.
# 'count' variable is defined for computation operations.
# 'read' vector is defined for finding the location of subsets having same elements.
# 'break' is used for breaking a loop.
# For description, type ?break in the console.
# Finding all possible subsets of two.

count<-c(1)
sets<-matrix(0L,nrow=k,ncol=(length(A)*length(A)))
for(i in 1:length(A))
{
  for(j in 1:length(A))
  {
    sets[,count]<-c(A[i],A[j])
    count=count+1;
  }
}

# Removing subsets having same elements

read<-vector(mode='numeric',length=ncol(sets));
for(k in 1:ncol(sets))
{
  if(length(intersect((sets[,k])[1],(sets[,k])[length((sets[,k]))])==1))
  {
    read[k]<-c(k);
  }
}
read<-read[read>0]
count<-c(0)
for(l in 1:length(read))
{
  sets<-sets[,-read[l]]
  if(l==length(read))
  {
    break
  }
  else
  {
    count=count+1
    read[l+1]=read[l+1]-count
  }
}

# Removing one among the pair of subsets having same elements.
# "unique" function is used to find and retain only the unique elements in a vector.
# For description, type ?unique in the console.
# "sort.list" function is used sort vector in either ascending or descending order.
# For description, type ?sort.list in the console.

read<-vector(mode='numeric',length=ncol(sets));
for(m in 1:ncol(sets))
{
  for(n in 1:ncol(sets))
  {
    if(length(intersect((sets[,m]),(sets[,n])))==2)
    {
      read[m]<-c(n);
    }
  }
}
read<-unique(read)
read<-read[sort.list(read,decreasing=FALSE)]
count<-c(0)
for(o in 1:length(read))
{
  sets<-sets[,-read[o]]
  if(o==length(read))
  {
    break
  }
  else
  {
    count=count+1
    read[o+1]=read[o+1]-count
  }
}

# Final list of unique subsets.

print(sets)