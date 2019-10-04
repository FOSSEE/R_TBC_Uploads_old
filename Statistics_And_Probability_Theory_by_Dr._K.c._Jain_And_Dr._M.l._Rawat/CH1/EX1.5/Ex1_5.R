#Example 5 Chapter 1
d1 = c( 1,2,3,4,5,6 )
d2 = c( 1,2,3,4,5,6 )
P<-function(d){                        
  a=expand.grid(d1,d2) 
  b=rowSums(a)
  count=0
  for(i in (1:length(b)))
  {
    if(b[i]==d)
    { 
      count=count+1
    }
  }
  return (count)
}
Psum7or8 = (P(7)+P(8))/36
print(Psum7or8)
Psum7or11 = (P(7)+P(11))/36
Pnot7not11 = 1-Psum7or11
print(Pnot7not11)
