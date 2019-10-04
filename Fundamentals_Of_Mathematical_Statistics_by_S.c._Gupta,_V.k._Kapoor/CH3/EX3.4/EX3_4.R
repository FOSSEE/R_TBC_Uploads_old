#Page number--3.9
#Example number--3.4

#Preparing Combination function
comb=function(n,r){
	return (factorial(n)/(factorial(r)*factorial(n-r)))
}

s=cards()

#Part (i)
subset(s, rank=="K" | rank=="J" | rank=="Q" | rank=="A")
#there are 4 King, 4 Jack, 4 Queen, 4 Ace ---> we need to select one from each
#total there are 52 cards
p=(comb(4,1)*comb(4,1)*comb(4,1)*comb(4,1))/comb(52,4)
sprintf("Probability: %f",p)

#Part (ii)
subset(s, rank=="K" | rank=="Q" )
#there are 4 kings, 4 queens ----> we need to select two from each
#total there are 52 cards
p=(comb(4,2)*comb(4,2))/comb(52,4)
sprintf("Probability: %f",p)

#Part (iii)
#There are 26 black cards and 26 red cards ----> we need to select two from each
#total there are 52 cards
p=(comb(26,2)*comb(26,2))/comb(52,4)
sprintf("Probability: %f",p)

#Part (iv)
subset(s, suit=="Diamond" | suit=="Heart" )
#there are 13 heart, 13 diamonds ----> we need to select two from each
#total there are 52 cards
p=(comb(13,2)*comb(13,2))/comb(52,4)
sprintf("Probability: %f",p)

#Part (v)
#4 cards can be from each suit
#total 52 cards
p=(comb(13,1)*comb(13,1)*comb(13,1)*comb(13,1))/comb(52,4)
sprintf("Probability: %f",p)











