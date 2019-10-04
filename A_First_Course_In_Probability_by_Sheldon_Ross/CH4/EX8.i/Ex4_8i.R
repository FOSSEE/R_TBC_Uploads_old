lot_size = 10

P_4defectives = 0.3
P_1defective = 0.7

inspect_size = 3

P_acceptance = choose(4,0)*choose(6,3)*P_4defectives / choose(lot_size, inspect_size) + choose(1,0)*choose(9,3)*P_1defective / choose(lot_size, inspect_size)

ans = 1 - P_acceptance
print(ans)