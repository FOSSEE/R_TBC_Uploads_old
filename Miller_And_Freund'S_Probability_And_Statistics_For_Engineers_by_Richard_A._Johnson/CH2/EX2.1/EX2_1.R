#The industrial engineer records the maximum
#amount of bacteria present along the production line, in the units Aerobic Plate
#Count per square inch (APC/in2), for n = 7 day
Data<-c(96.3,155.6,3408.0,333.3,122.2,38.9,58.0)#7 day data
stripchart(Data,method ="stack",
           at = c(0.1),las=1,xlab = "Bacteria Count (APC/sq.in)",pch=20)
