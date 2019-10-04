#page no. 641
#example 14-4

p=0.4       #(given)
pa=0.22     #(given)
pb=0.18     #(given)

hu=-((p*log(p))+(0.35*log(0.35))+(0.25*log(0.25)))
print(hu)

hb=-(pa*log(pa)+pb*log(pb)+0.35*log(0.35)+0.25*log(0.25))
print(hb)

cat("thus H(U)=",hu,"<",hb,"= H(B)")

#the answers in the book are slightly different. I looks to me that they are wrong because I have done exactly same calculation and answers are little different.
