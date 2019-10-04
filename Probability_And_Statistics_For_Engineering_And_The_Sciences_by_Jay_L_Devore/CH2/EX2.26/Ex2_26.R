#Ex2.26, Page 75
#Answers may vary slightly due to rounding off of values

#Package to be installed: VennDiagram
library(VennDiagram)

#A=>Arts, B=>Books, C=>Cinema
pa<-0.14
pb<-0.23
pc<-0.37
pab<-0.08
pbc<-0.13
pac<-0.09
pabc<-0.05

#To illustrate the Venn diagram using the given probabilities
draw.triple.venn(area1=pa,area2=pb,area3=pc,n12=pab,n23=pbc,n13=pac,n123=pabc,category=c("Arts","Books","Cinema"))

cat("With the help of Venn diagram:\n")
#P(A|B)
pa_b<-pab/pb
print(paste("P(A|B)=",pa_b))

#P(A|B U C)
pa_bUc<-(pab+pac-pabc)/(pb+pc-pbc)
print(paste("P(A|B U C)=",pa_bUc))

#P(A|reads at least once)=P(A|A U B U C)
pa_aUbUc<-pa/(pa+pb+pc-pab-pac-pbc+pabc)
print(paste("P(A|reads at least once)=",pa_aUbUc))

#P(A U B|C)
paUb_c<-(pac+pbc-pabc)/pc
print(paste("P(A U B|C)=",paUb_c))
