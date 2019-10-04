# Chapter 2 - Conditional Probability, Section - 2.3 (Bayes' Theorem), Page No. - 84

# Let the number of patients be represented by the variable named 'patient'.
# Let the number of successes be represented by the variable named 'success'.
# Let the number of failures be represented by the variable named 'failure'.

patient<-c(40)
success<-c(22)
failure<-c(18)

# Let a function 'sequenc' for finding the possible number of sequences for the given number patients and successes.
# 'N','D' and 'output' are variables declared in the function definition for the purpose of calculation operations.

sequenc<-function(patient,success)
{
  N<-c(1);
  D<-c(1);
  for(i in 1:success)
  {
    N=N*(patient-i+1);
    D=D*(i);
  }
  output<-N/D
  return(output)
}

# Let the prior probabilities be stored in a vector named "Prior".

Prior<-c(0.00, 0.19, 0.19, 0.17, 0.14, 0.11, 0.09, 0.06, 0.04, 0.01, 0.00)

# Let the posterior probabilities be given by the function named 'post' and stored in a vector named 'Final'.
# 'sum' and 'Numerator' are variables declared in the function definition for the purpose of calculation operations.
# "vector" function is used for defining a vector.
# For more description, type ?vector in the console.

Final<-vector(mode='numeric',length=length(Prior))
post<-function(comp)
{
  sum<-c(0)
  Numerator<-((Prior[comp])*(sequenc(patient,success))*(((comp-1)/10)^success)*((1-((comp-1)/10))^failure));
  for(j in 1:length(Prior))
  {
    sum=sum+((Prior[j])*(sequenc(patient,success))*(((j-1)/10)^success)*((1-((j-1)/10))^failure))
  }
  return(Numerator/sum)
}

for(k in 1:length(Prior))
{
  Final[k]<-post(k)
}

# "barplot" function is used to draw a barplot on the input vector's data.
# For more description, type ?barplot in the console.

barplot(Final,xlab="Events from B1 to B11",main="Posterior Probabilities",space=0.07)

# Adding posterior probabilities from previous example as points in the same plot.

# Let the number of possible compositions be stored in the variable 'composition'.

composition<-c(11)

# Let the posterior probabilities be given by the function named 'post' and stored in a vector named 'Final'.
# 'sum' and 'Numerator' are variables declared in the function definition for the purpose of calculation operations.
# "vector" function is used for defining a vector.
# For more description, type ?vector in the console.

Final<-vector(mode='numeric',length=composition)
post<-function(comp)
{
  sum<-c(0)
  Numerator<-((1/composition)*(sequenc(patient,success))*(((comp-1)/10)^success)*((1-((comp-1)/10))^failure));
  for(j in 1:composition)
  {
    sum=sum+((1/composition)*(sequenc(patient,success))*(((j-1)/10)^success)*((1-((j-1)/10))^failure))
  }
  return(Numerator/sum)
}

for(k in 1:composition)
{
  Final[k]<-post(k)
}

# "points" function is used to add points in existing plot.
# For more description, type ?points in the console.

points(Final, pch=4)