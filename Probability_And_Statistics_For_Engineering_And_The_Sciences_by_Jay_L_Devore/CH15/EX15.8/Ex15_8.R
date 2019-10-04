#Ex15.8, Page 643
#Answers vary from that of text book(CI in text=>(4830,8220))

Epoxy<-c(10860,11120,11340,12130,14380,13070)
Other<-c(4590,4850,6510,5640,6390,0)

dat<-data.frame(Crush_Strength=c(Epoxy,Other),Bark_board=rep(c("Epoxy","Other"),each=6))
print(dat)

#To display differences between crushing strengths of both bark boards 
o<-outer(Epoxy,Other,"-")
print(o)

#To find corresponding CI intervals
print(wilcox.test(Crush_Strength~Bark_board,data=dat,conf.int=TRUE,conf.level=0.95))



