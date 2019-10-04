#Two Production heats of welding Material
heat1<-c(0.27,0.35,0.37)
heat2<-c(0.23,0.15,0.25,0.24,0.30,0.33,0.26)
data<-list(heat1,heat2)
stripchart(data,
           xlab="Copper Content",
           col=c("orange","red"),
           pch=16,
           method ="stack",
           cex=1,
           xlim=c(0.15,0.40),
           las=1
)