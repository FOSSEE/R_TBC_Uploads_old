# Bayes's Theorem : P (Bi|A) = P(Bi)*P(A|Bi) / P(B1)*P(A|B1)+P(B2)*P(A|B2)+...+P(Bn)*P(A|Bn)
event<- c("D","D.","T","T.")
# event D= has Disease
# event D.= does not have Disease
# event T= Test is positive
# event T.= Test is negative
p_D<- 0.03 #probability that the person has a disease

p_D. <- 0.97 #probability that the person has a disease

pT_D <- 0.9 #probablity of T given D

pT_D. <- 0.02 #probability of T given not D

pD_T <- (pT_D*p_D)/((pT_D*p_D)+(pT_D.*p_D.))
pD_T <- round(pD_T ,digits = 3) 
pD_T 