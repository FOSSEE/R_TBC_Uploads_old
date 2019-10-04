#Bar code 39(Pg no. 24)

black_bars = 5
narrow_bars = 3
wide_bars = 2
bars = factorial(black_bars)/(factorial(narrow_bars)*factorial(wide_bars))

narrow_spaces = 3
wide_spaces = 1
codes = bars*(narrow_spaces+wide_spaces)

cat("The number of possible codes is",codes)