p_d1=0.028
p_d2=0.012
p_d3=0.032
p_d4=0.928
p_a4_d1=0.02
p_a4_d2=0.09
p_a4_d3=0.10
p_a4_d4=0.95
#  the probabilities that the board has no defect or a D1, D2, or D3 type of defect
p_nodefect_or_d1=(p_d1*p_a4_d1)/((p_d1*p_a4_d1)+(p_d2*p_a4_d2)+(p_d3*p_a4_d3)+(p_d4*p_a4_d4))
print(p_nodefect_or_d1)

p_nodefect_or_d2=(p_d2*p_a4_d2)/((p_d1*p_a4_d1)+(p_d2*p_a4_d2)+(p_d3*p_a4_d3)+(p_d4*p_a4_d4))
print(p_nodefect_or_d2)

p_nodefect_or_d3=(p_d3*p_a4_d3)/((p_d1*p_a4_d1)+(p_d2*p_a4_d2)+(p_d3*p_a4_d3)+(p_d4*p_a4_d4))
print(p_nodefect_or_d3)

p_nodefect_or_d4=(p_d4*p_a4_d4)/((p_d1*p_a4_d1)+(p_d2*p_a4_d2)+(p_d3*p_a4_d3)+(p_d4*p_a4_d4))
print(p_nodefect_or_d4)
