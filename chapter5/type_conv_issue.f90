program type_conv_issue
   use, intrinsic :: iso_fortran_env, only: output_unit
   implicit none

   call run_app()

contains
   subroutine run_app()
      implicit none

      real :: a, b, c
      integer :: i

      a = 1.5
      b = 2.0
      c = a / b
      i = a / b

      write (output_unit, '("c = ",F12.3,", i = ",I0)') c, i
   end subroutine run_app
end program type_conv_issue
