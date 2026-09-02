program underflow
   use, intrinsic :: iso_fortran_env, only: output_unit
   implicit none

   call run_app

contains
   subroutine run_app()
      implicit none

      real :: a, b, c, d, z

      a = 1.0e-30
      b = 1.0e-30
      c = 1.0e30
      d = a * b * c ! underflow
      z = a * (b * c)

      write (output_unit, '("d = ",E11.4,", z = ",E11.4)') d, z
   end subroutine run_app
end program underflow

