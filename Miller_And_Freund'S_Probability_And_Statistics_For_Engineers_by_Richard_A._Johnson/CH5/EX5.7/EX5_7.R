mu= 10.1 
sigma= 2.7
#a) For the next food or product, what is the probability that its maximum
#attenuation is between 8.5 dB and 13.0 dB?
a=pnorm((13-mu)/sigma) -pnorm((8.5-mu)/sigma)
a
#b)According to the normal model, what proportion of the products have
#maximum attenuation between 8.5 dB and 13.0 dB?
cat("o 0.5801 as the proportion having maximum attenuation between
8.5 and 13.0 dB")
#c)What proportion of the products have maximum attenuation greater than 15.1 dB
1-pnorm((15.1-mu)/sigma)