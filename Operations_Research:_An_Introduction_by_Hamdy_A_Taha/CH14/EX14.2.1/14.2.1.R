##Chapter 14 : Probabilistic Inventory Models
##Example 2-1 : Page 582

#holding cost
h=25
#penalty cost
p=45
#critical ratio
CR=p/(p+h)

D=matrix(c(200,220,300,320,340,0.1,0.2,0.4,0.2,0.1),nrow = 2,byrow = T)

#The demand is a normal distribuion
print("Case A")
ystar=qnorm(0.643,300,20)

#The demand is a discrete PDF
print("Case B")
CDF=numeric()
for(i in 1:5){CDF[i]=sum(D[2,1:i])}
rbind(D,CDF)
