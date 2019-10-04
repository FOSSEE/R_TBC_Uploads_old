#Automated Filling(Pg no. 342)
foo = function()
{
n = 20
sample_var = 0.0153
var = 0.01
alpha = 0.05

statistic = ((n-1)*sample_var)/var

compare = qchisq((1-alpha),(n-1))

if(statistic>compare)
{
  print("Reject null hypothesis")
}
else
{
  print("there is no strong evidence of a problem with incorrectly filled bottles")
}
}
foo()