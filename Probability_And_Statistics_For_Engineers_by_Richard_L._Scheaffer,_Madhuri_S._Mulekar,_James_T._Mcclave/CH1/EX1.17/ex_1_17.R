#Boxplots

boston =c(0,0,0,0,0,0,0,0,0,4,0,3,9,8,1,4,1)
houston =c(51,36,32,27,38,65,26,46,38,51,42,28,21,31,22,28,18)
Newyork =c(15,30,4,11,13,17,11,22,14,22,19,19,27,11,6,15,11)

boxplot(boston,houston,Newyork,names = c("Boston","Houston","New YOrk"))
