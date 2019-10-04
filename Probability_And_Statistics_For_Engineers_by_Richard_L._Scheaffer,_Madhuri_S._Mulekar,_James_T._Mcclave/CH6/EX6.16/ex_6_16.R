
# using normal distribution

#a
# SAT mathematics scores mean = 480 and sd = 100
a <- pnorm(550,480,100,lower.tail = T) 
cat(" percent of students would score less than 550 in a typical year is P(X<550)", a * 100)

#b
# ACT mathematics scores mean = 18 and sd = 6
b <- (550-480)/100
cat(" The engineering school set as a comparable standard on the ACT math test would be" , 18 + 6*b)

#c
cat(" the probability that a randomly selected student will score over 700 on the SAT math test = P(X>700)",
    pnorm(700,480,100,lower.tail = F))

    