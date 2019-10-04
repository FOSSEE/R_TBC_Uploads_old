#Page.No 8.15 - 8.16

# Rank in efficiency 
Rx<-c(1,2,3,4,5,6,7,8,9,10)

length_of_services_in_years<-c(15,12,10,11,13,10,10,18,11,13)

Ry<-rank(length_of_services_in_years)

P<-print(cor(Rx,Ry),digits=0)

#Hence there is no correlaion between the experience 
  # and efficiency of employees