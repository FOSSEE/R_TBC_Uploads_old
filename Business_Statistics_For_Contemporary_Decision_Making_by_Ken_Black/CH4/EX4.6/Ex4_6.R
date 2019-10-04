# General Law of Multiplication :

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

# a.) P(Manufacturing_B and Southeast_E) :
P_B_E <- total_r[2]*(Southeast_E[2]/total_r[2])
P_B_E 

# b.) P(West_G and Finance_A) :
P_G_A <- sum(Midwest_F) *(West_G[1]/sum(Midwest_F))
P_G_A 

# c.) P(Manufacturing_B and Communication_C) :
P_B_C <- .0
P_B_C  # The matrix shows no intersection for these two events. 
# Thus B and C are mutually exclusive. 