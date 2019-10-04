sample_size=c(5,4,6,5)
#l1=y1bar-y3bar
#l2=y1bar+y2bar+y3bar-3*y4bar
# We can rewrite the contrasts in the following form:
#l1=y1bar+0*y2bar-y3bar+0*y4bar
#l2=l2=y1bar+y2bar+y3bar-3*y4bar
# thus we identify a1 = 1, a2 = 0, a3 =-1, a4 = 0 and b1 =0, b2 = 1, b3 =0, b4 =-1
a=c(1,0,-1,0)
b=c(1,1,1,-3)
test=0
i=1
while(i<=length(sample_size)){
  test=test+(a[i]*b[1])/sample_size[i]
  i=i+1
}
print(test)
if(test==0){
  print("hence the contrasts are orthogonal.")
}else{
  print("hence the contrasts are not orthogonal")
}
# part b
sample_size=5
a=c(1,0,-1,0)
b=c(1,1,1,-3)
test=0
i=1
while(i<=4){
  test=test+(a[i]*b[1])/sample_size
  i=i+1
}
print(test)
if(test==0){
  print("hence the contrasts are orthogonal.")
}else{
  print("hence the contrasts are not orthogonal")
}

