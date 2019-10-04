
##Example 13.5.1 Pg.686
##Median Test

urban <-c(35,26,27,21,27,38,23,25,25,27,45,46,33,26,46,41)
rural <-c(29,50,43,22,42,47,42,32,50,37,34,31)
z<-c(urban,rural)
n<-length(z) ;n
u<-median(z)
a<-length(urban[urban>u]) ;a
b<-length(rural[rural>u]) ;b
c<-length(urban[urban<=u]) ;c
d<-length(rural[rural<=u]) ;d

chi<-(n*(a*d-b*c)^2)/((a+b)*(c+d)*(a+c)*(b+d))  ;chi

chi_critical <- qchisq(1-0.05,1,lower.tail = T) ;chi_critical
pval<- pchisq(chi,1) ;pval 

#pval > 0.05, hence two saamples may have been drawn from populations with equal median

