#Camera flash tests(Pg no. 66)

pass = 0.8
fail = 1 - pass

ppf = pass*pass*fail

cat("the probability that the first and second cameras pass the test and third one fails is",ppf)