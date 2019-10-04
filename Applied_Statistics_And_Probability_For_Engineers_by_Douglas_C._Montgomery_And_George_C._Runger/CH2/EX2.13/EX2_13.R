#Printed circuit board layout(Pg no. 25)

locations = 8
identical_components = 5
designs = factorial(locations)/(factorial(identical_components)*factorial(locations-identical_components))

cat("Number of possible designs is",designs)