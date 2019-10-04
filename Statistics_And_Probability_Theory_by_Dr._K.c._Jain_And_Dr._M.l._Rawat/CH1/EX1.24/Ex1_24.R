#Example 24 chapter 1 page no 28
PABC=c(500,300,200)
P_A = PABC[1]/sum(PABC)
P_B = PABC[2]/sum(PABC)
P_C = PABC[3]/sum(PABC)
P_DwhenA=1/100
P_DwhenB=2/100
P_DwhenC=4/100
P_AwhenD=P_DwhenA*P_A/(P_DwhenA*P_A+P_DwhenB*P_B+P_DwhenC*P_C)
print(P_AwhenD)
