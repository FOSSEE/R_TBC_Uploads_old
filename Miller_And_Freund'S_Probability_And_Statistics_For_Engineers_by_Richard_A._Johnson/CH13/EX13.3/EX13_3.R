#To improve quality in production There are three thing to study that are
# 3 initiators (A), 2 booster charges (B), and 4 main charges(C)
A<-c(rep('Initiator 1',8),rep('Initiator 2',8),rep('Initiator 3',8))
B<-c('Powder','Pellet','Powder','Pellet','Powder','Pellet','Powder','Pellet','Powder','Pellet','Powder','Pellet','Powder','Pellet','Powder','Pellet','Powder','Pellet','Powder','Pellet','Powder','Pellet','Powder','Pellet')
C<-c('MC1','MC1','MC2','MC2','MC3','MC3','MC4','MC4','MC1','MC1','MC2','MC2','MC3','MC3','MC4','MC4','MC1','MC1','MC2','MC2','MC3','MC3','MC4','MC4')
DelayTime<-c(10.7,9.82,10.02,13.66,14.46,20.86,11.44,13.76,15.04,
16.02,27.26,21.42,20.82,14.46,24.56,36.48,18.42,18.62,
22.80,25.14,33.40,20.62,31.86,19.78,22.94,31.12,32.92,21.38,
27.92,59.86,31.94,28.32,7.14,7.98,24.32,10.26,
8.30,7.86,7.00,8.40,8.40,10.94,17.82,15.28,9.56,19.04,19.98,18.46)
TempC<-c(rep('MC1',4),rep('MC2',4),rep('MC3',4),rep('MC4',4))
C<-c(rep(TempC,3))
TempB<-c(rep('Powder',2),rep('Pellet',2))
B<-c(rep(TempB,12))
length(B)
A<-c(rep('Initiator 1',16),rep('Initiator 2',16),rep('Initiator 3',16))
length(DelayTime)
Dat<-data.frame(A,B,C,DelayTime)
fit<-lm(DelayTime~A*B*C,data=Dat)
#The Anova table is
anova(fit)
#the initiators and main charges are significant as,
with(Dat, tapply(DelayTime, list(A), mean))
with(Dat, tapply(DelayTime, list(C), mean))