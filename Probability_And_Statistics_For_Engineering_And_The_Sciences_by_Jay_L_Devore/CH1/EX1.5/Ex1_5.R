#Ex1.5, Page 11

Adhesive_Type<-c(1,1,2,2)
Conductor_material<-c(1,2,1,2)
Observed_bond_strength<-c(82,75,84,78,77,87,80,90)
mat1<-matrix(Observed_bond_strength,nrow=4,ncol=2)
Average<-c(sum(mat1[1,])/2,sum(mat1[2,])/2,sum(mat1[3,])/2,sum(mat1[4,])/2)
mat1<-cbind(Adhesive_Type,Conductor_material,mat1,Average)
colnames(mat1)[3]<-"Observed bond strength"
print(mat1)

n<-length(Adhesive_Type)/2
plot(Conductor_material,Average,main="Average bond strengths",xlab="Conducting material",ylab="Average strength")
segments(Conductor_material[1],Average[1],Conductor_material[2],Average[2])
segments(Conductor_material[3],Average[3],Conductor_material[4],Average[4])
