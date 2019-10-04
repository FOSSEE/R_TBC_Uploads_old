#Page number--6.13
#Example number--6.5

Event=c("Lucky number","Special lucky no.","Other numbers")
Favourable=c("5,10,15","0","1,2,3,4,6,7,8,9,11,12,13,14,16,17,18,19")
px=c(3/20,1/20,16/20)
Player_Gain=c((20-10)*px[1],(50-10)*px[2],-10*px[3])
a=data.frame(Event,Favourable,px,Player_Gain)
a
EX=sum(a[1:3,4])
EX
if(EX!=0){print("Game is not fair")}
