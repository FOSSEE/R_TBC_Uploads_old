#install.packages("MASS")
require(MASS)

total_white_balls = 6
total_black_balls = 5

fav_no_of_white_balls = 1
fav_no_of_black_balls = 2

drawn_balls = 3

ans = (choose(total_white_balls, fav_no_of_white_balls) * choose(total_black_balls, fav_no_of_black_balls)) / choose(total_black_balls + total_white_balls, drawn_balls)

print(fractions(ans))

