#Data of 50 nanopillars
Data<-c(245,333,296,304,276,336,289,234,253,292,
        366,323,309,284,310,338,297,314,305,330,
        266,391,315,305,290,300,292,311,272,312,
        315,355,346,337,303,265,278,276,373,271,
        308,276,364,390,298,290,308,221,274,343)
breaks = seq(205, 405, by=40)
Data.cut = cut(Data, breaks, right=TRUE) 
Data.freq = table(Data.cut)
cumfreq = cumsum(Data.freq)
message("Cumulative Frequency of data")
cbind(cumfreq)
