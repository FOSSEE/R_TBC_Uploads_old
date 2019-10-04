np=500
ne=200
x=3
l=ne/np
P=dpois(x,l)
n<-paste("Probability that there are three errors in a page is less than a percentage of",round(P*100))
n