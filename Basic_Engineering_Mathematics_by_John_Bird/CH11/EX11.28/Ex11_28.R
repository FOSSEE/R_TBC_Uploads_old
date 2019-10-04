#page no. 97
#problem 28
#formula used: D/d = sqrt((f+p)/(f-p))
#              (D/d)^2= (f+p)/(f-p)
#given:
D= 21.5
d = 10.75
p = 1800
f = (p*(1+(D/d)^2))/(((D/d)^2)-1) #stress of thick cylinder
print(f)
