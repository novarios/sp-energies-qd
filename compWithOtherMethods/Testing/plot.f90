      program yalla
      implicit none
      integer :: i, j, n
      real(kind=8) :: hw, a, b, c, d, dmc
      real(kind=8) :: elog1, elog2, elog3
      real(kind=8), allocatable, dimension(:) :: r, x1, x2, x3

      read(5,*)n , hw, dmc, d
      allocate(r(n),x1(n),x2(n))
      do i=1,n
         read(5,*) j, a, b
         r(i) = j
         x1(i) = a
         x2(i) = b
      enddo 
      do i=2,n
         a= ((x1(i)-dmc))!/dmc
         b = ((x2(i)-dmc))!/dmc
!         a = ((x2(i)-x2(i-1)))

         elog2 = log10(abs( b ))
         write(6,'(3E20.10)') log10(r(i)), elog2, elog2
      enddo 


      end
