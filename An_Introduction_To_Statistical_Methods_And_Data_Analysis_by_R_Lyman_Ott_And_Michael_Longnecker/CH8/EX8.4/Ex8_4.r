Mean=c(2.2, 4.6 ,21.2 ,31.4)
Standard_deviation=c(1.476,2.119,4.733,5.52)
s_min=min(Standard_deviation)
s_max=max(Standard_deviation)
# test statistic
F=s_max^2/s_min^2
print(F)
# The critical value of F > F.alpha
#  we reject the hypothesis of homogeneity
#of the population variances. 

distance_1km=c(1,5,2,1,2,2,4,3,0,2)
distance_5km=c(4,8,2,3,8,5,6,4,3,3)
distance_10km=c(20,26,24,11,28,20,19,19,21,24)
distance_20km=c(37,30,26,24,41,25,36,31,31,33)
print(Standard_deviation[1]^2/Mean[1])
print(Standard_deviation[2]^2/Mean[2])
print(Standard_deviation[3]^2/Mean[3])
print(Standard_deviation[4]^2/Mean[4])
i=1
while(i<11){
  distance_1km[i]=sqrt(distance_1km[i]+0.375)
  i=i+1
}
i=1
while(i<11){
  distance_5km[i]=sqrt(distance_5km[i]+0.375)
  i=i+1
}
i=1
while(i<11){
  distance_10km[i]=sqrt(distance_10km[i]+0.375)
  i=i+1
}
i=1
while(i<11){
  distance_20km[i]=sqrt(distance_20km[i]+0.375)
  i=i+1
}
combined_group=data.frame(cbind(distance_1km,distance_5km,distance_10km,distance_20km))
combined_group
 
 