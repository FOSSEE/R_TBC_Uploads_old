#Example 9 chapter 6 page no 247
rankj1=c(1,6,5,10,3,2,4,9,7,8)
rankj2=c(6,4,9,8,1,2,3,10,5,7)
rankj3=c(3,5,8,4,7,10,2,1,6,9)
name=c("c1","c2","c3","c4","c5","c6","c7","c8","c9","c10")
a=data.frame(name,rankj1,rankj2,rankj3)
r12 = cor(a["rankj1"],a["rankj2"])
r23 = cor(a["rankj2"],a["rankj3"])
r13 = cor(a["rankj1"],a["rankj3"])
cat(r12,r23,r13)
#book has a calcultion error in r23 value