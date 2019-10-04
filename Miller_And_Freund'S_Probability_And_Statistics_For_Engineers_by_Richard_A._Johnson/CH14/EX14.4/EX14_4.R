method_A<-c(54,66,67,71,74,77)
method_B<-c(41,52,59,60,62,64,65)
method_C<-c(47,49,52,56,69)
#Null Hypothesis=Population are identical
#Alternative Hypothesis=Population are not identical 
Loc=0.05
H.chi=qchisq(1-0.05,2)
H.chi
#reject mo if Chi>h.chi 
dati = list(g1=method_A, g2=method_B, g3=method_C)#getting the list of different method 
dati
#Chi square using Kruskal test
kruskal.test(dati)
print("since Chi exceed H.chi there for m0 is rejected")
print("there for preventative method against corrosion are not equally effective")

