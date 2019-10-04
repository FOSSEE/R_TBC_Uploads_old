#page no. 33-34
#example 2-15

p_TC=0.95
p_C=0.02
p_TH=0.05
p_H=0.98

p_CT=(p_TC*p_C)/((p_TC*p_C)+(p_TH*p_H))       #this formula is obtained using Bayes' theorem

print(p_CT)

#this result states that if the test is taken by someone from this population without knowing whether that person
#has the disease or not, then even a positive test only suggests that there is a 27.6% chance of having a disease 