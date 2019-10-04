# Weighted MOving Average : 3*l + 3*p + 3*b_p/6

Month <- c("January","February","March","April","May","June","July","August","September","October","November","December")
Shipments <- c(1056,1345,1381,1191,1259,1361,1110,1334,1416,1282,1341,1382)
Month <- data.frame(Month,Shipments)
Month
weights1 <- c(4,2,1,1)

# install.packages("stats")
library(stats)

f_weight_may <- weighted.mean(Shipments[4:1],weights1)
f_weight_june <- weighted.mean(Shipments[5:2],weights1)
f_weight_july <- weighted.mean(Shipments[6:3],weights1)
f_weight_aug <- weighted.mean(Shipments[7:4],weights1)
f_weight_sep <- weighted.mean(Shipments[8:5],weights1)
f_weight_oct <- weighted.mean(Shipments[9:6],weights1)
f_weight_nov <- weighted.mean(Shipments[10:7],weights1)
f_weight_dec <- weighted.mean(Shipments[11:8],weights1)
f_weights <- data.frame(f_weight_may,f_weight_june,f_weight_july,f_weight_aug,
                        f_weight_sep,f_weight_oct,f_weight_nov,f_weight_dec)
f_weights 

Shipments[5:12] - f_weights

# We noticed that in this problem the errors obtained by using the 4-month weighted moving average
# were greater than most of the errors obtained by using an  unweighted 4-month moving average
# in Ex15_1.

