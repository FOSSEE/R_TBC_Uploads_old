#NUll hypothesis :The pinholes are uniformly distributed across the tin plate
#Alternative hypothesis :The pinholes are not uniformly distributed across the tin plate
Data<-c(4.8,14.8,28.2,23.1,4.4,28.7,19.5,2.4,25.0,6.2)#distance of  10 pinhole 
y<-Data/30#Function F(X)=DATA/30
L.o.c=0.05
#Criterion : Reject the null hypothesis if D is large. where Dnis maximum difference between the empirical cumulative distribution
#From figure we have greatest value x=6.2
ks.test(y,"punif")# Kolmogorov-Smirnov test
message("There for we doesn't reject the null hypothesis")
