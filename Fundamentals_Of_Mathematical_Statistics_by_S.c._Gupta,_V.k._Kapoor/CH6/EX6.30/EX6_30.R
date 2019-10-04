#Page number--6.37
#Example number--6.30

#Part (i)
EY=-1*2+0*6+1*2
EY
EX=-1*2+0*4+1*4
EX

#Part (ii)
EXY=-1*-1*0+0*-1*1+1*-1*1+0*-1*2+0*0*2+0*1*2+1*-1*0+1*0*1+1*1*1
EXY
COV=EXY-EX*EY
COV

#Part (iii)
EY2=-1^2*0.2+0*0.6+1^2*0.2
EY2
VY=EY2-EY^2
VY
EX2=-1^2*0.2+0*0.4+1^2*0.4
EX2
VX=EX2-EX^2
VX

#Part (iv)
PXY=0.2/0.6				  #P(X=-1|Y=0)
PXY=0.2/0.6				  #P(X=0|Y=0)
PXY=0.2/0.6				  #P(X=1|Y=0)

#Part (v)
EYX=-1*0+0*2+1*0
EYX2=1*0+0*2+0
VYX=EYX2-EYX^2
VYX
