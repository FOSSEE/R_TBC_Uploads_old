#Page number--10.8
#Example number--10.2

n=25
CsX=125-6-8+8+6   		 #Corrected sum of X
CsY=100-14-6+12+8			 #Corrected sum of Y
CsX2=650-6^2-8^2+8^2+6^2	 #Corrected sum of X^2
CsY2=460-14^2-6^2+12^2+8^2 	 #Corrected sum of Y^2
CsXY=508-6*14-8*6+8*12+6*8	 #Corrected sum of XY
meanX=CsX/n
meanY=CsY/n
covXY=1/n*CsXY-meanX*meanY			
s.dX=sqrt(1/n*CsX2-meanX^2)
s.dY=sqrt(1/n*CsY2-meanY^2)
rXY=covXY/(s.dX*s.dY)
round(rXY,2)
