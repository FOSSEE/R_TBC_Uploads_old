sd<-.225
z_foralpha=qnorm(1-0.05)
z_forbeta=qnorm(1-0.01)
zstar<-z_foralpha+z_forbeta
E<-16.37 - 16.27
sample_size<- zstar^2 * sd * sd/ E^2
print(ceiling(sample_size))
#  the manufacturer must obtain a random sample of n = 80 boxes to conduct this test
 