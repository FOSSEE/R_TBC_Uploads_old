# Chapter 1 - Introduction to Probability, Section - 1.6 (Finite Sample Spaces), Page No. - 23

# Let alleles be represented by the vector 'allele'.

allele<-c('A','a')
print(allele)

# "data.farme" function is used in order to create a data frame.
# For more description, type ?data.frame in the console.
# "nrow" and "ncol" functions are used to either assign or find the number of rows and columns in a matrix respectively.
# For more description type, ?nrow and ?ncol in the console.
# Finding all possible genotypes. They are stored in the matrix 'genotype'.
# 'count' variable is defined for assigning values to 'genotype' matrix.

count<-c(1)
genotype<-matrix(0L,nrow=length(allele),ncol=(2^length(allele)))
for(i in 1:length(allele))
{
  for(j in 1:length(allele))
  {
    genotype[,count]<-c(allele[i],allele[j])
    count=count+1;
  }
}

# Printing table representing possible combinations from the parents.
# Let the table values be stored in the data frame named as 'combinations'.
# "rownames" and "colnames" arguments are used to add names to each row and column of the data frame seperately.
# For more description, type ?rownames and ?colnames in the console.
# "paste0" function is used to combine strings and numbers for printing them together.
# For more description type, ?paste0 in the console.

combinations<-data.frame(nrow=length(allele),ncol=length(allele))
colnames(combinations)<-c('A','a');
for(k in 1:length(allele))
{
  for(l in 1:length(allele))
  {
    combinations[k,l]=paste0(allele[k],allele[l])
  }
}
rownames(combinations)<-c('A','a');
print(combinations)

# "intersect" function is used to find common elements in the input vectors.
# For more description type, ?intersect in the console.
# "length" function is used to find the number of elements in a vector.
# For more description type, ?length in the console.
# "!=" represents 'not equal to' and "&&" is used to find the 'logical AND' of given inputs.
# A variable 'count' is defined for computation operations.

for(m in 1:ncol(genotype))
{
  count<-c(1);
  for(n in 1:ncol(genotype))
  {
    if((m!=n)&&(length(intersect(genotype[1:(nrow(genotype)),m],genotype[1:(nrow(genotype)),n]))==2))
    {
      count=count+1;
    }
  }
  print(genotype[,m])
  print(paste0(" has the probability ", count/ncol(genotype)))
}

# The answer may slightly vary due to being represented as a real number rather than a fraction.