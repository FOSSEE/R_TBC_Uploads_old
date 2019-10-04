#install.packages("MASS")
require(MASS)
total_men = 6
total_women = 9

fav_no_of_men = 3
fav_no_of_women = 2

commmittee_size = 5

ans = (choose(total_women, fav_no_of_women) * choose(total_men, fav_no_of_men)) / choose(total_men + total_women, commmittee_size )

print(fractions(ans))
