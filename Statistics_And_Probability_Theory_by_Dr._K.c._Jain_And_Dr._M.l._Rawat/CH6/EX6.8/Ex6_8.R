#Example 8 chapter 6 page no 245
rankx=c(2,1,4,3)
ranky=c(1,3,2,4)
name=c("ram","shyam","hari","sohan")
a=data.frame(name,rankx,ranky)
cor(a["rankx"],a["ranky"])
