sample_size=c(6,6,6,6,6)
 
# l=y1bar-(y2bar+y3bar+y4bar+y5bar)/4 
 
# thus we identify a1 = 4, a2 = -1, a3 =-1, a4 = -1 , a5=-1  
a=c(4,-1,-1,-1,-1)
 
test=0
i=1
while(i<=length(sample_size)){
  test=test+a[i]^2
  i=i+1
}
print(test)
y1bar=1.175
y2bar=1.293
y3bar=1.328
y4bar=1.415
y5bar=1.500
l=4*y1bar-y2bar-y3bar-y4bar-y5bar
print(l)
# we can obtain the sum of squares associated with the contrast from
SSC1=(sample_size[1]*(l^2))/test
print(SSC1)

a=c(0,1,1,-1,-1)
test=0
i=1
while(i<=length(sample_size)){
  test=test+a[i]^2
  i=i+1
} 
l=0*y1bar+y2bar+y3bar-y4bar-y5bar
# we can obtain the sum of squares associated with the contrast from
SSC2=(sample_size[2]*(l^2))/test
print(SSC2)

a=c(0,1,-1,0,0)
test=0
i=1
while(i<=length(sample_size)){
  test=test+a[i]^2
  i=i+1
} 
l=0*y1bar+y2bar-y3bar+0*y4bar+0*y5bar
# we can obtain the sum of squares associated with the contrast from
SSC3=(sample_size[2]*(l^2))/test
print(SSC3)

a=c(0,0,0,1,-1)
test=0
i=1
while(i<=length(sample_size)){
  test=test+a[i]^2
  i=i+1
} 
l=0*y1bar+0*y2bar+0*y3bar+y4bar-y5bar
# we can obtain the sum of squares associated with the contrast from
SSC4=(sample_size[2]*(l^2))/test
print(SSC4)

