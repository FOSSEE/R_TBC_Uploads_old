#Plasma Etch(Pg no. 629)

init = 550
ad = 749
bd = 1052
ab = 650
cd = 1075
ac = 642
bc = 601
abcd = 729

lA = (1/4) * (-init+ad-bd+ab-cd+ac-bc+abcd)
lA
lB = (1/4) * (-init-ad+bd+ab-cd-ac+bc+abcd)
lB
lC = (1/4) * (-init-ad-bd-ab+cd+ac+bc+abcd)
lC
lD = (1/4) * (-init+ad+bd-ab+cd-ac-bc+abcd)
lD

lAB = (1/4) * (init-ad-bd+ab+cd-ac-bc+abcd)
lAB
lAC = (1/4) * (init-ad+bd-ab-cd+ac-bc+abcd)
lAC
lAD = (1/4) * (init+ad-bd-ab-cd-ac+bc+abcd)
lAD
