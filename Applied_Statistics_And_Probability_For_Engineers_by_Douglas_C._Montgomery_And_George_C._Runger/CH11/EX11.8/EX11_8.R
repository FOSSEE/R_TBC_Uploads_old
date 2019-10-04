#Wire Bond Pull Strength(Pg no. 460)

S_xx = 698.56
S_xy = 2027.7132
SSt = 6105.9
n = 25

r = S_xy/sqrt(S_xx*SSt)

statistic = (r*sqrt(n-2))/sqrt(1-(r^2))
statistic

compare = qt(0.025,n-2,lower.tail = FALSE)
compare

z = qnorm(0.025,0,1,lower.tail = FALSE)
z


lim1 = tanh(atanh(r) - (z/sqrt(n-3)))
lim2 = tanh(atanh(r) + (z/sqrt(n-3)))

cat(round(lim1, digits = 4),"<= P <= ",round(lim2, digits = 4))