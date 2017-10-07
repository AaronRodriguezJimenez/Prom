! Programa para promediar las coordenadas x de un archivo de coordenadas para SIESTA
      program prom
      implicit real*8 (a-h,o-z)
      real :: promx, promy, promz, sumax, sumay, sumaz
      dimension x(1500,3)
      integer i, k, n
      
      write (*,*) 'Numero de atomos:'
      read (*,*), n
      open(unit=3,file='coorx.dat',status='old')     
      do 1 i=1,n
      read(3,*)(x(i,k), k=1,3)
  1  continue
        sumax=0
        sumay=0
        sumaz=0
        do 3 i=1,n   
         sumax=x(i,1)+sumax
         sumay=x(i,2)+sumay
         sumaz=x(i,3)+sumaz
  3  continue      
         promediox=sumax/n
         promedioy=sumay/n
         promedioz=sumaz/n
     
      print *, 'Coordenadas Promedio:', promediox, promedioy, promedioz
 
      close(3)
      stop
      end program prom 

      
