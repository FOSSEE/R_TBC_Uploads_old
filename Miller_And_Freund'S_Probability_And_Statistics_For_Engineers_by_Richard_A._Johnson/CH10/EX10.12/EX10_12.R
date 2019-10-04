#expected frequencies
column<-c("Shop1","Shop2","Shop3")
row<-c('Complete','Repair Adjustment','Incomplete')
Shop1<-c(78,56,54)
Shop2<-c(15,30,31)
Shop3<-c(7,14,15)
Total<-c(100,100,100)
Col4<-c(188,76,36)
GT=300#grand total
e11=e12=e13=100*Col4[1]/GT
e21=e22=e23=100*Col4[2]/GT
e31=e32=e33=100*Col4[3]/GT
#Frequency are
e11
e21
e31