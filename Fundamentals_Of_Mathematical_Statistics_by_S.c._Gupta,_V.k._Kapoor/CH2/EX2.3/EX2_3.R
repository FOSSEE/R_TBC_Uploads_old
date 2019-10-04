#PAGE NUMBER--2.11
#Example number--2.3

x1=5200
x2=4200
x=5000
#we know that combined mean----> x=(a1*x1+a2*x2)/(a1+a2)
#we will find the ratio of a1/a2
#let us name it as ------> a
a=(x-x2)/(x1-x)
#by comparing a numerator and denominator we get a1=800 and a2=200
a1=x-x2;a1
a2=x1-x;a2
m.p=a1*100/(a1+a2)
f.p=a2*100/(a1+a2)
sprintf("Percentage of male employee: %s",m.p)
sprintf("Percentage of female employee: %s",f.p)