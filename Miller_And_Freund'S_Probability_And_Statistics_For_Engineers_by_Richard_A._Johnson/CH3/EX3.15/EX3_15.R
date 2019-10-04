#Probabity that it Rating is
vp=0.07#Very Poor
P=0.12#Poor
fair=0.17
good=0.32
vgood=0.21
excellent=0.11
#(a) probabity that it will rate vp,p,fair,good
#The Possiblity are all mutually excluive
probabilty=vp+p+fair+good
message("The Probability is : ",probabilty)
#(a) probabity that it will rate good ,vgood,excellent
#The Possiblity are all mutually excluive
probabilty=good+vgood+excellent
message("The Probability is : ",probabilty)