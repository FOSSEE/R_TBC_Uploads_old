#Electrical Current(Pg no. 692)

x = 110
mean = 107.0
std_dev = 1.5

PCR = (x-90)/(6*std_dev)
cat("PCR =",PCR)
PCRk = (x-mean)/(3*std_dev)
cat("PCRk =",PCRk)

LSL = (90-mean)/std_dev
USL = (x - mean)/std_dev

#P(X<LSL)
z1 = pnorm(LSL,0,1)
z1 = round(z1)
z1

#P(X>USL)
z2 = pnorm(USL,0,1,lower.tail = FALSE)
z2 = round(z2 , digits = 3)
z2
