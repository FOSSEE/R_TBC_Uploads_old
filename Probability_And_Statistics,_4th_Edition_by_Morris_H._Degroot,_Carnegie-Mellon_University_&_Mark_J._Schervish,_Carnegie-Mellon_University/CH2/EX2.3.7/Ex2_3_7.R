# Chapter 2 - Conditional Probability, Section - 2.3 (Bayes' Theorem), Page No. - 82

# A function named 'Bayes' is defined in order to find the conditional probability of event 'Bj', where 'j' varies from '1' to '11', such that event 'E1' has already occured.

Bayes<-function(j)
{
  return((j-1)/55)
}

# Conditional probability of 'B1','B2' and 'B11' given that 'E1' has already occured be represented by 'Pr_B1_E1','Pr_B2_E1' and 'Pr_B11_E1' respectively.

Pr_B1_E1=Bayes(1)
print(Pr_B1_E1)
Pr_B2_E1=Bayes(2)
print(Pr_B2_E1)
Pr_B11_E1=Bayes(11)
print(Pr_B11_E1)

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

# "barplot" function is used to draw a barplot on the input vector's data.
# For more description, type ?barplot in the console.

barplot(Final,xlab="Events from B1 to B11",main="Posterior Probabilities")

# Let the probability of one more patient's success given that the observed event of given successes and failures has occured be given by the function named 'last'.
# A variable named 'outcome' is defined in the function for computational operations.

last<-function(comp)
{
  outcome<-c(0)
  for(l in 1:comp)
  {
    outcome=outcome+(((l-1)/10)*post(l))
  }
  return(outcome)
}
last(composition)

# The answer may slightly vary due to rounding off values.