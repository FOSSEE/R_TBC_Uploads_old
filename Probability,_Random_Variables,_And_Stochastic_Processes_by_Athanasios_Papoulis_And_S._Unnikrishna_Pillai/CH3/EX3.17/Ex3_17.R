#page no. 68-70
#example 3-17

#taking p=0.47

p=0.47
n1=(1/(1-(2*p)))-1
n2=(1/(1-(2*p)))+1

cat(n1,"<=2n<=",n2)      # this is equation (3-71)
print("therefore if p=0.47, then 2n=16")

#when p=0.48
p=0.48
n1=(1/(1-(2*p)))-1
n2=(1/(1-(2*p)))+1

cat(n1,"<=2n<=",n2)     

#when p=0
p=0
n1=(1/(1-(2*p)))-1
n2=(1/(1-(2*p)))+1

cat(n1,"<=2n<=",n2)     

print("Finally if p=0, then (3-71) gives the optimum number of plays to be 2") 

