#Page.No 8.57 - 8.59

A<-30
B<-40
C<-20
D<-30

ans<-(180*sqrt(B*C)/(sqrt(A*D)+sqrt(B*C)))

cat("converting cos",ans,"to r gives correlation value") 

rt<-0.087  # From the table value corresponding to cosine

cat("tetrachoric correlation is",rt,"positively correlated")

