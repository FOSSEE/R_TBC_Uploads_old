#Ex11.1, Page 420

dat<-c(0.97,0.48,0.48,0.46,0.77,0.14,0.22,0.25,0.67,0.39,0.57,0.19)
mat1<-matrix(dat,nrow=3,ncol=4,byrow=TRUE)
rownames(mat1)<-c("Brand1","Brand2","Brand3")
colnames(mat1)<-c("WT1","WT2","WT3","WT4")
print(mat1)

print(paste("Number of levels of factor A(Brand of pen), I:",nrow(mat1)))
print(paste("Number of levels of factor B(Washing treatment), J:",ncol(mat1)))

