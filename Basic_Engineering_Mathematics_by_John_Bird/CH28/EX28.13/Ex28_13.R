#page no.295
#formula used: volume of cone = (pi*r^2*h)/3
#              total surface area of cone = pi*r(l+r)

# install.packages("remotes")
# remotes::install_github("cewalters/r-packages")

r = 5 # radius of cone 
h = 12 # height of cone
volume_of_cone = (pi*r^2*h)/3
print(volume_of_cone)

hypotenuse <- function (x, y)
{
  sqrt (x ^ 2 + y ^ 2)
}

l = hypotenuse(r,h) #slant height
TSA = pi*r*(l+r) # total surface area of cone
print(TSA)