#page no. 221
#problem 3
#formula used: pythagoras theorem


hypotenuse = function(base,perp)
{
  return(sqrt(base^2+perp^2))
}

distance = function(speed,time)
{return(speed*time)}

#given:
s1 = 300 #speed of one air craft in km/hr
s2 = 220 #speed of second air craft in km/hr
time = 4 #In hr
d1=distance(s1,time) #travels in north
d2=distance(s2,time) #travels in west

# both airplane make right angle triangle
d3 = hypotenuse(d1,d2) #distance b/w two airplanes
print(d3)


