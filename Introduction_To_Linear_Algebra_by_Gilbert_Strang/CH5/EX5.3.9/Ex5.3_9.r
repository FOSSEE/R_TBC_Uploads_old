# Packages used  : pracma
# To install pracma,type following in command line while connected to internet
# install.packages("pracma") 
# package can be included by command " library(pracma) "
# for more information about pracma visit https://cran.r-project.org/web/packages/pracma/index.html

# Example : 9   Chapter : 5.3     Page No: 276
# The right hand rule - cross product of x-axis and y-axis is z-axis

library(pracma)
u<-c(1,0,0)
v<-c(0,1,0)
cp<-cross(u,v)
print("u * v is ")
print(cp)