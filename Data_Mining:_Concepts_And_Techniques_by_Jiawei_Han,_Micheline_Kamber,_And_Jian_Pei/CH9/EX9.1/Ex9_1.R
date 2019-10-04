### install.packages("neuralnet")


library(neuralnet)
library(MASS)
data <- Boston


## used learning rate 0.9 and one hidden layer




print(net.infert <- neuralnet(medv~nox+rm+age, learningrate = 0.9,data,hidden=1,act.fct="tanh"))



prediction(net.infert)







