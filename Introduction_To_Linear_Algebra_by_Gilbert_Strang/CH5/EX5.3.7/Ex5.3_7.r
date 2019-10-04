# Packages used  : pracma
# To install pracma,type following in command line while connected to internet
# install.packages("pracma") 
# package can be included by command " library(pracma) "
# for more information about pracma visit https://cran.r-project.org/web/packages/pracma/index.html

# Example : 7   Chapter : 5.3     Page No: 275
# CrossProduct of Vectors
library(pracma)
u<-c(3,2,0)
v<-c(1,4,0)
cp<-cross(u,v)
print("u * v is ")
print(cp)
