#Page number--16.18
#Example number--16.10

n1=12
n2=15
#H0::Null Hypothesis ------> No significant difference in mean of weight in diet A and B
#H1::Alternative Hypothesis----->ux!=uy (two-tailed)

#Diet A
x1=c(25,32,30,34,24,14,32,24,30,31,35,25)
m1=sum(x1)/n1  			# Mean
m1
a1=x1-m1
b1=a1^2
data.frame(x1,a1,b1)

#Diet B
x2=c(44,34,22,10,47,31,40,30,32,35,18,21,35,29,22)
m2=sum(x2)/n2  			# Mean
m2
a2=x2-m2
b2=a2^2
data.frame(x2,a2,b2)

s2=(sum(b2)+sum(b1))/(n1+n2-2)
t=abs((m1-m2)/sqrt(s2*(1/n1+1/n2)))
t 

sprintf("H0 is accepted")
sprintf("Two diets do not differ significantly ")





