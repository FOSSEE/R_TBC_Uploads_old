#page no. 97
#example 4-13

#the choose() function calculate the nCr and sum() function calculates the sumation 

k=3:5
p=1/2
p_A_wins=sum(choose(k-1,2)*p^3*(1-p)^(k-3))

cat("If p=",p," then P(A wins)=", p_A_wins)

k=4
p_4_games=choose(k-1,2)*p^3*(1-p)^(k-3)
cat("The probability that A will win in exactly four games is ", p_4_games)

k=3
p_3_games=choose(k-1,2)*p^3*(1-p)^(k-3)

cat("the probability that A will win in four games or less is ",p_4_games,"+",p_3_games,"=",p_4_games+p_3_games)

k=2:4
p_conditional=sum(choose(k-1,1)*((1/2)^2)*((1/2)^(k-2)))
cat("Given that A has won the first game, the conditional probability of A winning equals",p_conditional)
