#Page number--3.36
#Example number--3.24

letters

n=length(letters)

#Part (i)
#Probability that the letter choosen is vowel
n1=length(c("a","e","i","o","u"))
p=n1/n
sprintf("Probability: %f",p)

#Part (ii)
#Probability that the letter preceeds m and is vowel
n2=length(c("a","e","i"))
p=n2/n
sprintf("Probability: %f",p)

#Part (iii)
#Probability that the letter follows m and is vowel
n3=length(c("o","u"))
p=n3/n
sprintf("Probability: %f",p)

