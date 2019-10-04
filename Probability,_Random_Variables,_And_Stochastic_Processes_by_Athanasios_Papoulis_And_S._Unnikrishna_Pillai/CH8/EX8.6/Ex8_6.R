#page no. 313
#example 8-6

z=2       #(given)
n=500     # total number of persons (given)
r=240     #person who reported Republican 

x_bar=r/n

p=z*sqrt((x_bar*(1-x_bar))/n)      #using the equation (8-21)

cat("equation (8-21) yields the interval",x_bar,"+-",p)

#ansers givent in the book are approximate answers 

