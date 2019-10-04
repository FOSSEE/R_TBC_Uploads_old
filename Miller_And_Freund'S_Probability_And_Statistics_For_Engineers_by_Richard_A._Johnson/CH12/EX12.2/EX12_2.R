#Estimating The Parameter of onw-way classification
#tin-coating weight for 12 disc in each liboratory is show as 
LabA<-c(0.25,0.27,0.22,0.30,0.27,0.28,0.32,0.24,0.31,0.26,0.22,0.28)#Laboratory A Data of Tin-Coting weight
LabB<-c(0.18,0.28,0.21,0.23,0.25,0.20,0.27,0.19,0.24,0.22,0.29,0.16)#Laboratory B Data of Tin-Coting weight
LabC<-c(0.19,0.25,0.27,0.24,0.18,0.26,0.28,0.24,0.25,0.20,0.21,0.19)#Laboratory C Data of Tin-Coting weight
LabD<-c(0.23,0.30,0.28,0.28,0.24,0.34,0.20,0.18,0.24,0.28,0.22,0.21)#Laboratory d Data of Tin-Coting weight
cbind(LabA,LabB,LabC,LabD)#Table View of data
k=4#Total laboratory
n=12#total no of data in each laboratory
mu=mean(c(LabA,LabB,LabC,LabD))
sigma1=(sum(LabA)/n)-mu
sigma2=(sum(LabB)/n)-mu
sigma3=(sum(LabC)/n)-mu
sigma4=(sum(LabD)/n)-mu
print("There for Parameters of one way classification are:")
message("mu:",mu,"sigma1:",sigma1,"sigma2:",sigma2,"sigma3:",sigma3,"sigma4:",sigma4)
