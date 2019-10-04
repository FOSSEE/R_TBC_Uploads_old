#Printed Circuit Boards(Pg no. 697)

defects = c(6,4,8,10,9,12,16,2,3,10,9,15,8,10,8,2,7,1,7,13)
samples = 20
size = 5

defects_p_unit = defects/size
ubar = sum(defects_p_unit)/samples
ubar

UCL = ubar + 3*sqrt(ubar/size)
cat("UCL =",UCL)

LCL = ubar - 3*sqrt(ubar/size)
cat("LCL =",LCL,"< 0")