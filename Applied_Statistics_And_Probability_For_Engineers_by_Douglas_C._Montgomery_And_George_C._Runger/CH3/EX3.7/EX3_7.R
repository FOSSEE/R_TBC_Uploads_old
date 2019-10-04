#Cumulative distribution function(Pg no. 72)

"
F(x) = 0 -- { x < -2}
F(x) = 0.2 -- { -2 <= x < 0}
F(x) = 0.7 -- { 0<= x < 2}
F(x) = 1 -- { 2 <= x}

f(-2) = ?
f(0) = ?
f(2) = ?
"
P1 = 0.2 - 0.0
P2 = 0.7 - 0.2
P3 = 1.0 - 0.7

cat("f(-2) =",P1)
cat("f(0) =",P2)
cat("f(2) =",P3)