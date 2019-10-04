#EX_2_1
#page 10
x<-numeric(9)#creating the sample array
y<-numeric(4)
X<-c(-4:4)#creating the sample space of x and y
y<-c(1:4)
#function to caculate sample space of p(x)
px<-function(x)
{
  if(-4<=x&&x<=4)
  {
    return(1/9)
  }else{
  return(0)
  }
}
#creating the probability function of y
py<-function(y)
{
  if(1<=y&&y<=4)
  {
    return(2/9)
  }else if(y==0)
  {
    return(1/9)
  }else{
    return(0)
  }
}
#printing the sample space of p(x)
for(i in 1:9)
{
  print(px(i-5))
}
#printing the sample space of p(y)
for(i in 1:5)
{
  print(py(i-1))
  
}