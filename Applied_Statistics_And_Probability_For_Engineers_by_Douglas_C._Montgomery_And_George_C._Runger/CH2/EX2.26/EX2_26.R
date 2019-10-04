#Machine stages(Pg no. 45)

A = 0.90 #probability of that first stage of machining meets specifications
B_given_A = 0.95 #Given A, probability that a second stage of machining meets specifications
A_and_B = B_given_A*A

cat(A_and_B,"is the probability that both stages meet specifications")