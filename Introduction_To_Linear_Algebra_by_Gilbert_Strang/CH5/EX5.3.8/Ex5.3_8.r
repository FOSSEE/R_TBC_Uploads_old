# Packages used  : pracma
# To install pracma,type following in command line while connected to internet
# install.packages("pracma") 
# package can be included by command " library(pracma) "
# for more information about pracma visit https://cran.r-project.org/web/packages/pracma/index.html

# Example : 8   Chapter : 5.3     Page No: 276
# CrossProduct of Vectors

library(pracma)
u<-c(1,1,1)
v<-c(1,1,2)
cp<-cross(u,v)
print("u * v is ")
print(cp)
