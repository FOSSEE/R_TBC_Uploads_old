#Example 6 Chapter 1
W=10
B=9
R=8
Blue=3
s=W+B+R+Blue
ways_drawing_10_balls = length(combn(s,10))/10
P_2blue_at_11th_draw = 2/20
P_2blue_till_11th_draw = length(combn(Blue,1)) * length(combn(s-Blue,9))/9 * P_2blue_at_11th_draw / ways_drawing_10_balls
print(P_2blue_till_11th_draw)

