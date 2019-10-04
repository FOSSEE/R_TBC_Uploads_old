# Bayes's Rule : P (Xi|Y) = P(Xi)*P(Y|Xi) / P(X1)*P(Y|X1)+P(X2)*P(Y|X2)+...+P(Xn)*P(Y|Xn)

Event <- c("A","B","C")
Prior <- c(.60,.30,.10)   # P(Ei)
Conditional <- c(.40,.50,.70)  # P(x|Ei)
Joint <- c(.24,.15,.07)  # P(X and Ei) = P(Ei)*P(x|Ei)
Posterior <- c(.52,.33,.15) # P(X and Ei)/sum(P(X and Ei))

machine <- cbind(Event,Prior,Conditional,Joint,Posterior)
machine

# Revised Probabilities :
machine_A <- Prior[1]* Conditional[1]/sum(Joint)
machine_A

machine_B <- Prior[2]* Conditional[2]/sum(Joint)
machine_B

machine_C <- Prior[3]* Conditional[3]/sum(Joint)
machine_C