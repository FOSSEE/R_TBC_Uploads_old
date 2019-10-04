total_men = 7
req_men = 3
total_women = 5
req_women = 2

ans1 = choose(total_men, req_men) * choose(total_women, req_women)
print(ans1)

no_of_feuding_men = 2

feuding_groups = choose(no_of_feuding_men, no_of_feuding_men) * choose(total_men - no_of_feuding_men, req_men - no_of_feuding_men)

ans2 = (choose(total_men, req_men) - feuding_groups) * choose(total_women, req_women)

print(ans2)