# Conditinal Probability :  P (X|Y) = P(X or Y)/P(Y) = (P(X)*P(Y|X))/P(Y)

Industry_type <- c("Finance_A", "Manufacturing_B","Communication_C")
Northeast_D <- c(.12,.15,.14)
Southeast_E <- c(.05,.03,.09)
Midwest_F <- c(.04,.11,.06)
West_G <- c(.07,.06,.08)
total_r <- c(.28,.35,.37)
total_c <- c(" ",.41,.17,.21,.21,1.00)
Industry_type <- cbind(Industry_type,Northeast_D,Southeast_E,Midwest_F,West_G,total_r)
Industry_type <- rbind(Industry_type,total_c)
View(Industry_type)

#a.) P(Manufacturing_B | Midwest_F) = P(Manufacturing_B and Midwest_F)/P(Midwest_F)
Pb_B_F = Midwest_F[2]/sum(Midwest_F)
Pb_B_F

#b.) P(West_G | Communication_C) = P(West_G and Communication_C)/P(Communication_C)
Pb_G_C = West_G[3]/sum(Northeast_D[3],Southeast_E[3],Midwest_F[3],West_G[3])  
Pb_G_C

#c.) P(Northeast_D | Midwest_F) = P(Northeast_D and Midwest_F)/P(Midwest_F)
Pb_D_F = .00/sum(Midwest_F)  
Pb_D_F


