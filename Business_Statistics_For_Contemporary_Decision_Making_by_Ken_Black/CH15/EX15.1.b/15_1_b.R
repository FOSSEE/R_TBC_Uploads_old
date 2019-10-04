# Error in Moving Average :
# Moving average :

Month <- c("January","February","March","April","May","June","July","August","September","October","November","December")
Shipments <- c(1056,1345,1381,1191,1259,1361,1110,1334,1416,1282,1341,1382)
Month <- cbind(Month,Shipments)
Month

# The ???rst moving average is 
first_four_Month_Moving_Average = sum(Shipments[1],Shipments[2],Shipments[3],Shipments[4])/4 
first_four_Month_Moving_Average
Second_four_Month_Moving_Average = sum(Shipments[5],Shipments[2],Shipments[3],Shipments[4])/4 
Second_four_Month_Moving_Average
Third_four_Month_Moving_Average = sum(Shipments[5],Shipments[6],Shipments[3],Shipments[4])/4 
Third_four_Month_Moving_Average
fourth_four_Month_Moving_Average = sum(Shipments[5],Shipments[6],Shipments[7],Shipments[4])/4 
fourth_four_Month_Moving_Average
fifth_four_Month_Moving_Average = sum(Shipments[5],Shipments[6],Shipments[7],Shipments[8])/4 
fifth_four_Month_Moving_Average
sixth_four_Month_Moving_Average = sum(Shipments[9],Shipments[6],Shipments[7],Shipments[8])/4 
sixth_four_Month_Moving_Average
seventh_four_Month_Moving_Average = sum(Shipments[9],Shipments[10],Shipments[7],Shipments[8])/4 
seventh_four_Month_Moving_Average
eight_four_Month_Moving_Average = sum(Shipments[9],Shipments[10],Shipments[11],Shipments[8])/4 
eight_four_Month_Moving_Average

a = " "
b= " "
c = " "
d =  " "
Average = rbind(a,b,c,d,first_four_Month_Moving_Average,Second_four_Month_Moving_Average,Third_four_Month_Moving_Average,
                fourth_four_Month_Moving_Average,fifth_four_Month_Moving_Average,sixth_four_Month_Moving_Average,
                seventh_four_Month_Moving_Average,eight_four_Month_Moving_Average) 
Average

a = " "
b= " "
c = " "
d =  " "
Error_May = Shipments[5]-first_four_Month_Moving_Average
Error_June = Shipments[6]-Second_four_Month_Moving_Average
Error_July = Shipments[7]-Third_four_Month_Moving_Average
Error_Aug = Shipments[8]-fourth_four_Month_Moving_Average
Error_sep = Shipments[9]-fifth_four_Month_Moving_Average
Error_oct = Shipments[10]-sixth_four_Month_Moving_Average
Error_nov = Shipments[11]-seventh_four_Month_Moving_Average
Error_dec = Shipments[12]-eight_four_Month_Moving_Average
Error <- rbind(a,b,c,d,Error_May,Error_June,Error_July,Error_Aug,Error_sep,Error_oct,Error_nov,Error_dec)
Error
Month <- cbind(Month,Average,Error)
View(Month)
