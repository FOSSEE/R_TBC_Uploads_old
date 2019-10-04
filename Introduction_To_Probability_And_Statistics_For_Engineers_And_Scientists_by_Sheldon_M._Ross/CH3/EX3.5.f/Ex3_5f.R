black_p = 6;
white_p = 6;
pair = 2;
total_p = black_p + white_p;

total_pairs  = 1;
while(total_p >0){
  total_pairs = total_pairs*factorial(total_p)/(factorial(pair) * factorial(total_p - pair) )
  total_p = total_p -2
}
total_pairs= total_pairs/factorial(6);
black_pairs  = 1;
while(black_p >0){
  black_pairs = black_pairs*factorial(black_p)/((factorial(pair) * factorial(black_p - pair) ))
  black_p = black_p -2
}
black_pairs= black_pairs/factorial(3);
white_pairs = black_pairs;
allowed_pairs = black_pairs * white_pairs;
probb = allowed_pairs/ total_pairs;
cat(" Probability that a random pairing will not result in any of the white and black players rooming together is ",probb) 