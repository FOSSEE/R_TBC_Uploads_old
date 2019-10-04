#Ex15.3, Page 631
#Here p value is used to make an inference regarding the rejection of hypotheses
#wilcoxsign_test() from coin package can also be used to find z value if needed

#H0: mu=50000
#Ha: mu<50000

Signed_rank<-c(-1,-2,+3,-4,+5,-6,-7,+8,-9,-10,+11,-12,-13,+14,-15,-16,-17,+18,-19,-20,-21,-22,-23,-24,-25)
xi_50000<-c(-10,-27,36,-55,73,-77,-81,90,-95,-99,113,-127,-129,136,-150,-155,-159,165,-178,-183,-192,-199,-212,-217,-229)
alpha_level<-0.01

w1<-wilcox.test(xi_50000,Signed_rank,paired=T,exact=F,correct=F,alt="two.sided")

#Using p value:
if(w1$p.value<alpha_level)  print(paste("H0 is rejected since p value,",w1$p.value,"is smaller than level,",alpha_level))  else  print(paste("H0 is not rejected"))
