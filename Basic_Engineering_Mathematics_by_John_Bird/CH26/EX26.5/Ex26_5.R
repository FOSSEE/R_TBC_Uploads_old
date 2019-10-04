#page no.271
#problem 5 
#formula used : area of right angle triangle = base*height/2

#given:
base = 1.92 
hypo = 5.68
height = sqrt(hypo^2 - base^2)


area_triangle <- function(x,y)  #area of right angle triangle 
{
  a = (x*y)/2
  return(a)
}

print(area_triangle(base,height))
