#page no. 223
#problem 5 
#formula used: sin=p/h    cos=b/h    tan=p/b  


hypotenuse = function(base,perp)
{
  return(sqrt(base^2+perp^2))
}

sinQ = function(x,y)
{return(x/y)}

cosQ = function(x,y)
{return(x/y)}

tanQ = function(x,y)
{return(x/y)}

#given: right angle triangle
base = 4.62
perp = 3.47
height = hypotenuse(base,perp)
print(height)
cat("sinC=",sinQ(perp,height))

cat("cosC=",cosQ(base,height))

cat("tanC=",tanQ(perp,base))

# rotate the sides 
b = perp
p = base 
h = height
cat("sinA=",sinQ(p,h))

cat("cosA=",cosQ(b,h))

cat("tanA=",tanQ(p,b))
