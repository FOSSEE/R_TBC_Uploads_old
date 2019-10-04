#Page number--8.5
#Example number--8.2
n=5
#Probability A wins the game
p=3/5
q=1-p
#Probability of getting A wins
#P=choose(5,x)*(3/5)^x*(2/5)^(5-x)
#Probability of getting 3 wins
P=(choose(5,3)*2**2+choose(5,4)*3*2+1*3^2*1)*3^3/5^5
P

