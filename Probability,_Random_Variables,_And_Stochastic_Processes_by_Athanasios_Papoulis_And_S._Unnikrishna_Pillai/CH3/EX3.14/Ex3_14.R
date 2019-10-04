#page no. 61-62
#example 3-14

p_winning_the_lottery=(6*5*4*3*2*1)/(51*50*49*48*47*46)      #probability of winning the lottery when total number of balls,n=51 and number of good balls,m=6
print(p_winning_the_lottery)

winning_prize=4000000
average_gain=(winning_prize*p_winning_the_lottery)-1
print(average_gain)

winning_prize_5matches=15000
odds_winning_5matches=66701
average_gain_5matches=(winning_prize_5matches/odds_winning_5matches) - 1
print(average_gain_5matches)

winning_prize_4matches=200
odds_winning_4matches=1213
average_gain_4matches=(winning_prize_4matches/odds_winning_4matches) - 1
print(average_gain_4matches)
