#page no. 311
#example 8-4

x_bar=210   # (given)

z=2
n=64     #number of bulbs 
h1=x_bar/(1+(z/sqrt(n)))       #using the EXPONENTIAL DISTRIBUTION. given by equation (8-18) in the book
h2=x_bar/(1-(z/sqrt(n)))

cat("We thus expect with confidence coefficient 0.95 that the mean time to failure of the bulb is between ",h1,"and ",h2,"hours.")  