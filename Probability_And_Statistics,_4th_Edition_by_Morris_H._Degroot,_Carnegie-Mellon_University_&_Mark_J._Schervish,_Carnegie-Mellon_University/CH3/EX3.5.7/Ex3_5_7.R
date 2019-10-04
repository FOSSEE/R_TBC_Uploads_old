# Chapter 3 - Random Variables and Distributions, Section - 3.5 (Marginal Distributions), Page No. - 137

# Let the total possible numbers which can appear on the face of a die after rolling be represented by 'outcome_dice'.
# Let the probability of a number to occur on a die be represented by 'dice'.

outcome_dice<-c(6);
dice=1/outcome_dice;

# Total events of getting a head in case of tossing 2 coins are '4' i.e. getting no heads, getting a heads on first toss, getting a heads on second toss and getting heads on both tosses.
# Let the probability of getting no heads on tossing two coins be represented by 'no_heads'.
# Let the probability of getting atleast 1 heads on tossing two coins be represented by 'one_heads'.
# Let the probability of getting 2 heads on tossing two coins be represented by 'two_heads'.

no_heads=1/4;
one_heads=2/4;
two_heads=1/4;

# Joint probability of getting no heads for all cases of dice throw be represented by 'x1'.
# Joint probability of getting atleast 1 heads for all cases of dice throw be represented by 'x2'.
# Joint probability of getting two heads for all cases of dice throw be represented by 'x3'.
# In order to define a vector, "vector" function is used.
# For description of this function, type ?vector in the console.

x1<-vector(mode='numeric',length=outcome_dice);
x2<-vector(mode='numeric',length=outcome_dice);
x3<-vector(mode='numeric',length=outcome_dice);
for(i in 1:outcome_dice)
{
  x1[i]=dice*no_heads;
}
for(i in 1:outcome_dice)
{
  x2[i]=dice*one_heads;
}
for(i in 1:outcome_dice)
{
  x3[i]=dice*two_heads;
}
x<-c(x1,x2,x3);

# Joint probabilities of both events X and Y be represented by a matrix 'f'.
# For converting vectors into a matrix by adjusting each vector in each row, "matrix" function in used with "byrow" argument set to TRUE.
# Final values are saved in the matrix 'f'.
# For description of this function, type ?matrix in the console.

f<-matrix(x,nrow=3,ncol=outcome_dice,byrow=TRUE);

# Let the marginal probability function of 'X' be represented by 'f1'.
# A variable 'outcome' is declared in the function for computation operation.

f1<-function(x)
{
  outcome=0;
  for(i in 1:ncol(f))
  {
    outcome=outcome+f[x,i];
  }
  return(outcome)
}

# Let the marginal probability function of 'Y' be represented by 'f2'.
# A variable 'outcome' is declared in the function for computation operation.

f2<-function(y)
{
  outcome=0;
  for(j in 1:nrow(f))
  {
    outcome=outcome+f[j,y];
  }
  return(outcome)
}

# Marginal probabilities of 'X'.

for(k in 1:nrow(f))
{
  print(f1(k))
}

# Marginal probabilities of 'Y'.

for(l in 1:ncol(f))
{
  print(f2(l))
}

# The answer may slightly vary due to being represented as a real number rather than a fraction.