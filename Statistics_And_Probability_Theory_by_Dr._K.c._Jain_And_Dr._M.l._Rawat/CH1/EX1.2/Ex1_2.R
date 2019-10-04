#Example 2 Chapter 1
screw=10
defective=2
r=2          #no of screws drawn from box
ways_drawing_r_screw = length(combn(screw,r))/r
ways_drawing_good_screw = length(combn(screw-defective,r))/r
P_no_defective = ways_drawing_good_screw/ways_drawing_r_screw
print(P_no_defective)      #answer given is wrong in the book
P_1_defective = length(combn(2,1))*length(combn(8,1)) / ways_drawing_r_screw
print(P_1_defective)
