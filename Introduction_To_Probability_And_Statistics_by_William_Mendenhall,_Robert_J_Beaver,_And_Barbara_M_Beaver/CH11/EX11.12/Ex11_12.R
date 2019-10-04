observation <- c(571,480,470,610,474,430,625,540,450,480,625,630,516,600,680,465,581,661)
supervisor <- c(1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,2,2)
shift <- c("day","swing","night","day","swing","night","day","swing","night","day","swing","night","day","swing","night","day","swing","night")
model <- aov(observation ~ supervisor * shift)
model
summary(model)
