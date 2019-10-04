#PAGE NUMBER--2.12
#Example number--2.4

Age_Group=c("20-25","25-30","30-35","35-40","40-45","45-50","50-55","55-60","60-65")
n_o_p=c(30,160,210,180,145,105,70,60,40)   		  # Number of persons
data.frame(Age_Group,n_o_p)

N=1000

# Part(i)
a=15/100*N
sprintf("Number of persons to be retrenched from the lower group: %d", a)
sprintf("30 people from 20-25 age group")
sprintf("%d people from 25-30 age group", a-30)

# Part(ii)
b=45/100*N
sprintf("Number of persons to be absorbed in other branches: %d", b)
Age_Group1=c("25-30","30-35","35-40","40-45")
n_o_p1=c(160-120,210,180,b-(40+210+180))
data.frame(Age_Group1,n_o_p1)

# Part(iii)
c=10/100*N
sprintf("Number of persons to retire: %d", c)

Age_Group2=c("40-45","45-50","50-55")
n_o_p2=c(145-20,105,70)   		  # Number of persons
data.frame(Age_Group2,n_o_p2)

A=47.5
h=5
mid=c((40+45)/2,(45+50)/2,(50+55)/2)
d=(mid-A)/h;d
fd=n_o_p2*d
data.frame(Age_Group2,mid,n_o_p2,d,fd)
mean=A + h* sum(fd)/sum(n_o_p2)
round(mean)






