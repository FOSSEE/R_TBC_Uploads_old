#Example : 5    Chapter : 1.2   pageno : 16

v<-c(2,1)
w<-c(1,2)
dotproduct<-sum(v*w)
magn_v<-sqrt(sum(v*v))
magn_w<-sqrt(sum(w*w))
cos_angle<-dotproduct/(magn_v*magn_w)
print(paste("Cosine of the angle between the given vectors is",cos_angle))


