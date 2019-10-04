#H0=the laboratories obtaining consistent result
#tin-coating weight for 12 disc in each liboratory is show as 
LabA<-c(0.25,0.27,0.22,0.30,0.27,0.28,0.32,0.24,0.31,0.26,0.21,0.28)#Laboratory A Data of Tin-Coting weight
LabB<-c(0.18,0.28,0.21,0.23,0.25,0.20,0.27,0.19,0.24,0.22,0.29,0.16)#Laboratory B Data of Tin-Coting weight
LabC<-c(0.19,0.25,0.27,0.24,0.18,0.26,0.28,0.24,0.25,0.20,0.21,0.19)#Laboratory C Data of Tin-Coting weight
LabD<-c(0.23,0.30,0.28,0.28,0.24,0.34,0.20,0.18,0.24,0.28,0.22,0.21)#Laboratory d Data of Tin-Coting weight
cbind(LabA,LabB,LabC,LabD)#Table View of data
k=4
n=12
T. = 11.70#grand total
N=48
SumA=sum(LabA)
SumB=sum(LabB)
SumC=sum(LabC)
SumD=sum(LabD)
C=T.^2/N
SST=sum(LabA^2)+sum(LabB^2)+sum(LabC^2)+sum(LabD^2)-C
SSTr=0.0135
SSE=SST-SSTr
MSTr=SSTr/(k-1)
MSE=0.0015
F=MSTr/MSE
F

