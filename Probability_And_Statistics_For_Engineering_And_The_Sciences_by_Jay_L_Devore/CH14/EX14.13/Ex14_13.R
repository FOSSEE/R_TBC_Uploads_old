#Ex14.13, Page 615

print(paste("Reason for nonconformity:"))
Blemish<-c(34,23,32)
Crack<-c(65,52,28)
Location<-c(17,25,16)
Missing<-c(21,19,14)
Other<-c(13,6,10)
Sample_size<-c(150,125,100)
df1<-data.frame(Blemish,Crack,Location,Missing,Other,Sample_size)
print(df1)


#Total values
Blemish_tot<-sum(Blemish)
Crack_tot<-sum(Crack)
Location_tot<-sum(Location)
Missing_tot<-sum(Missing)
Other_tot<-sum(Other)
Sample_tot<-sum(Sample_size)

#H0: production lines are homogeneous
#Ha: production lines are not not homogeneous

tbl<-cbind.data.frame(df1$Blemish,df1$Crack,df1$Location,df1$Missing,df1$Other)
c<-chisq.test(tbl,df1$Sample_size)
print(c)

print(paste("P value:",c$p.value))

print(paste("H0 should not be rejected at levels 0.05 or 0.01"))