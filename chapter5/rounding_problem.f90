program rounding_problem
   use, intrinsic :: iso_fortran_env, only: output_unit
   implicit none

   call run_app()

contains
   subroutine run_app()
      implicit none

      integer :: i
      real :: x1
      real :: x2

      x1 = 1.0
      x2 = 0.1

      do i = 1, 990
         x1 = x1 + x2
      end do

      write (output_unit, *) x1
   end subroutine run_app
end program rounding_problem