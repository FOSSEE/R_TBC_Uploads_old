#Range and interquartile range
Data<-c(136,143,147,151,158,160,
        161,163,165,167,173,174,
        181,181,185,188,190,205)
min=min(Data)
max=max(Data)
range=max-min
interrange=IQR(Data)
message("range : ",range," Mpa")
message("interquartile range : ",interrange,"Mpa")