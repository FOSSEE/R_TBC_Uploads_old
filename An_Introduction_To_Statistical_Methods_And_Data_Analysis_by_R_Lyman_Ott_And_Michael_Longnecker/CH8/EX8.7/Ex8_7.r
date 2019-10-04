#  the rank sum test 
Methodist=c(62,60,60,25,24,23,20,13,12,6)
Catholic=c( 62,62,24,24,22,20,19,10,8,8)
Pentecostal=c(37,31,15,15,14,14,14,5,3,2 )
n=30
data.value <- c( Methodist,Catholic,Pentecostal)
 
data.rank <- rank(data.value)
data <- data.frame(data.value, data.rank)
print(data)
 Sumofranks=c(182.5,167.5,115)
 #test statistic
 H=(12/(n*(n+1)))*((Sumofranks[1]^2+Sumofranks[2]^2+Sumofranks[3]^2)/10)-3*(n+1)
 print(H)
 
