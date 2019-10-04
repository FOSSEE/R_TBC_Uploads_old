#Sampling without replacement(Pg no. 25)

size = 6
total_parts = 50
defective_parts = 3
non_defective_parts = 47

step_1 = choose(defective_parts,2)

remaining_parts = size - 2

step_2 = choose(non_defective_parts, remaining_parts)

num_of_subsets = step_1*step_2

cat("the number of subsets of size 6 that contain exactly 2 defective parts is",num_of_subsets)

diff_subsets = choose(total_parts, size)

cat("total number of different subsets of size 6 is",diff_subsets)
