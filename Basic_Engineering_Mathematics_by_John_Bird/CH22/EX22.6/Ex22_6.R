#page no. 223
#problem 6 
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
 tanB = 8/15 #tan = p/b
 #according to angle B
 p = 8 #perpendicular lenght opposite angle B
 b = 15 #base lenght opposite angle B
 h = hypotenuse(b,p)
 
 cat("sinB=",sinQ(p,h))
 
 cat("cosB=",cosQ(b,h))
 
 #cat("tanB=",tanQ(p,b))
 
 #according to angle A
 base = p#base lenght opposite angle A
 perp = b#perpendicular lenght opposite angle A
 height = h
 
 cat("sinA=",sinQ(perp,height))
 
 #cat("cosA=",cosQ(base,height))
 
 cat("tanA=",tanQ(perp,base))
 