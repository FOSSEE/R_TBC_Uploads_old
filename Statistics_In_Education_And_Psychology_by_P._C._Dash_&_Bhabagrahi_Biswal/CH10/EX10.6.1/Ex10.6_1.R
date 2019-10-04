#Page.No 10.6 - 10.7

# In english
z<-scale(60,center = 40,scale = 8)
z<-z[1,]
T_score_E<-10*z+50
cat("Rama T_score in english is ",T_score_E)

#In mother tongue
z<-scale(50,center = 50,scale = 6)
z<-z[1,]
T_score_M<-10*z+50
cat("Rama T_score in mother tongue is ",T_score_M)

"Rama performance better in English than mother tongue"
