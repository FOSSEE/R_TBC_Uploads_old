# Chapter 1 - Introduction to Probability, Section - 1.7 (Counting Methods), Page No. - 26

# Let the routes from A to B be stored in 'route_I'.
# Let the routes from B to C be stored in 'route_II'.

route_I<-c(1,2,3);
route_II<-c(4,5,6,7,8);

# Let the combinations of possible routes be stored in a data frame named as 'routes'.
# "data.farme" function is used in order to create a data frame.
# For more description, type ?data.frame in the console.
# "nrow" and "ncol" functions are used to either assign or find the number of rows and columns in a matrix respectively.
# For more description type, ?nrow and ?ncol in the console.
# "paste0" function is used to combine strings and numbers for printing them together.
# For more description type, ?paste0 in the console.
# "colnames" argument is used to add names to each column of the data frame seperately.
# For more description, type ?colnames in the console.

routes<-data.frame(nrow=length(route_I),ncol=length(route_II))
for(i in 1:length(route_I))
{
  for(j in 1:length(route_II))
  {
    routes[i,j]=paste0(route_I[i],route_II[j])
  }
}
colnames(routes)<-route_II[1:length(route_II)]
print(routes)

# Let the total number of possible routes be given by the 'total'.

total=nrow(routes)*ncol(routes)
print(total)