principle<-c(5000)
r1<-c(0.04)
r2<-c(0.025)
dr1<-c(0.02)
dr2<-c(0.01)
a<-((principle*r1)*(1-dr1))-(principle*dr1)
b<-((principle*r2)*(1-dr2))-(principle*dr2)
a
b
if (a>b)
  s<-paste("Bond X brings more returns")
if(a<b)
  s<-paste("Bond Y brings more returns")
s

