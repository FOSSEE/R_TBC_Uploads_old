#Page.No 8.59

A<-50
B<-35
C<-40
D<-25

ans<-(180*sqrt(A*D)/(sqrt(B*C)+sqrt(A*D)))

cat("converting cos",ans,"to r gives correlation value") # From the table value

rt<-0.087  # From the table value corresponding to cosine
# since AD greater than BC correlation is negative

cat("tetrachoric correlation is",-rt,"Negatively correlated")
