program latlong
   use, intrinsic :: iso_fortran_env, only: input_unit, output_unit, real32
   implicit none

   call run_app()

contains
   subroutine run_app()
      implicit none

      integer, parameter :: LIM = 3
      real(kind=real32), parameter :: CORRECTION = 10.0
      real(kind=real32), dimension(LIM, LIM) :: data
      integer :: i, j

      write (output_unit, *) 'Enter the latitude/longitude data...'
      do i = 1, LIM
         read (input_unit, *) (data(i, j), j = 1, LIM)
      end do

      do i = 1, LIM
         do j = 1, LIM
            data(i, j) = data(i, j) + CORRECTION
         end do
      end do

      write (output_unit, *) 'Corrected data...'
      do i = 1, LIM
         write (output_unit, '(*(F8.3,1X))') (data(i, j), j = 1, LIM)
      end do
   end subroutine run_app
end program latlong