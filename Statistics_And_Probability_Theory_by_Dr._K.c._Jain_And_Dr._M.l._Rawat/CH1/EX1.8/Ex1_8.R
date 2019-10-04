#Example 8 Chapter 1
P<-function(d){                        
  v=c(1:200)       
  count=0
  for(i in (1:length(v)))
  {
    if(v[i]%%d==0)
    { 
      count=count+1
    }
  }
  return (count/200)
}
P_div_6=P(6)
P_div_8=P(8)
P_6_And_8=P(24)
P_6_or_8= P(6)+P(8)-P(24)
print(P_6_or_8)
