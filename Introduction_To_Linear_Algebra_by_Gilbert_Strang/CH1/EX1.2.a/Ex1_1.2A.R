#Example : 1.2A  Chapter : 1.2  Pageno : 17
#Finds whether Schwartz and traingular inequality between the given vectors are satisfied
#Finds the Cosine of the angle between the given vectors
v<-c(3,4)
w<-c(4,3)
dp=sum(v*w)
magn_v=sqrt(sum(v*v))
magn_w=sqrt(sum(w*w))
if(dp<=magn_v*magn_w){
  print("Schwartz inequality is satisfied for the given vectors")
}
z=v+w
magn_sum=sqrt(sum(z*z))
if(magn_sum<=magn_v+magn_w){
  print("Traingular inequality is satisfied for the given vectors")
}
print(paste("Cosine of the angle between the given vectors is ",dp/(magn_v*magn_w)))
