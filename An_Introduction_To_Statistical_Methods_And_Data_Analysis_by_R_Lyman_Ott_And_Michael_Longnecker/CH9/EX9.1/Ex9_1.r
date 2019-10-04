sample_size=c(5,4,6,5)
#l1=y1bar-y3bar
#l2=y2bar-y4bar
# We can rewrite the contrasts in the following form:
#l1=y1bar+0*y2bar-y3bar+0*y4bar
#l2=0*y1bar+y2bar+0*y3bar-y4bar
# thus we identify a1 = 1, a2 = 0, a3 =-1, a4 = 0 and b1 =0, b2 = 1, b3 =0, b4 =-1
a=c(1,0,-1,0)
b=c(0,1,0,-1)
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
