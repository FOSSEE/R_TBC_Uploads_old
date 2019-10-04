#Ex1.11, Page 20

data<-c(11.5,12.1,9.9,9.3,7.8,6.2,6.6,7.0,13.4,17.1,9.3,5.6,5.7,5.4,5.2,5.1,4.9,10.7,15.2,8.5,4.2,4.0,3.9,3.8,3.6,3.4,20.6,25.5,13.8,12.6,13.1,8.9,8.2,10.7,14.2,7.6,5.2,5.5,5.1,5.0,5.2,4.8,4.1,3.8,3.7,3.6,3.6,3.6)
#Unequal class widths
ci<-c(2,4,6,8,12,20,30)

#To find frequency, relative frequency and density of data manually
freq<-table(cut(data,ci,right=FALSE))
rel_freq<-freq/length(data)
density<-rel_freq/diff(ci)

print(cbind(freq,rel_freq,density))

#To create histogram of the bond strength data
hist(data,breaks=ci,freq=FALSE,right=FALSE,main="Histogram for bond strength data",xlab="Bond Strength")

