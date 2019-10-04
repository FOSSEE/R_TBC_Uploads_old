#Parallel circuit(Pg no. 51)

top = 0.95 #top device does operate
bottom = 0.95 #bottom device does operate

t = 1 - top #top device does not operate
b = 1 - bottom #bottom device does not operate

t_and_b = t*b

top_or_bottom = 1 - t_and_b

cat("The probability that the circuit operates is",top_or_bottom)

