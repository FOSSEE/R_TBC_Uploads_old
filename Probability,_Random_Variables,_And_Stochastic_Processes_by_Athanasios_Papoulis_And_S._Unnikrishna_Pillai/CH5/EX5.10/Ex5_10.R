#page no. 131
#example 5-10

i=0.01   #(given)
ro=1000  #(given)

#if r is between 900 and 1100 
r1=900
v1=i*(r1+ro)

r2=1100
v2=i*(r2+ro)


cat("If the resistence r is a random varibale uniform between",r1,"and",r2,"ohm ,then v is uniform between ",v1,"and ",v2,"V")
