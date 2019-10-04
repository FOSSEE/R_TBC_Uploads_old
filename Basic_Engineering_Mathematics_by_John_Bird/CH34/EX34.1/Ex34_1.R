#page no.363

n = 20 # no. of men
w = 33 # no. of women
total = n+w # total no. of people

prob_of_men = n/total
print(prob_of_men)

prob_of_women = w/total
print(prob_of_women)

if((prob_of_men + prob_of_women)==1)
{
  print("no error")
}