lbm=9999
#cm, measured length of bridge
lrm=9
#cm, measured length of rivet
lbt=10000
#cm, true length of bridge
lrt=10
#cm,true length of rivet

#calculating true error below;
Etb=lbt-lbm
#cm, true error in bridge
Etr=lrt-lrm
#cm, true error in rivet

#calculating percent relative error below
etb=Etb*100/lbt
#percent relative error for bridge
etr=Etb*100/lrt
#percent relative error for rivet
cat("a. The true error is")
cat(Etb,"cm","for the bridge")
cat(Etr,"cm","for the rivet")
cat("b. The percent relative error is")
cat(etb,"%","for the bridge")
cat(etr,"%","for the rivet")