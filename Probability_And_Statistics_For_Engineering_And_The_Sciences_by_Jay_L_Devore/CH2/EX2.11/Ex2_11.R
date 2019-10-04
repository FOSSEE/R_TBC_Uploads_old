#Ex2.11, Page 56

#S={U,D}

p<-seq(0,1,by=0.25)

for(i in p){
  pu<-i
  pd<-1-i
  cat("P(U):",pu,"\n")
  cat("P(D):",pd,"\n\n")
}
cat("p value can represent any fixed value between 0 and 1")