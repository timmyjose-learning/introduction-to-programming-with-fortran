! Relative error is preferred because it takes the size of the number into consideration, and
! is a more accurate indicator of error than absolute error
program rel_and_abs_error
   use, intrinsic :: iso_fortran_env, only: output_unit
   implicit none

   call run_app()

contains
   subroutine run_app()
      implicit none

      real :: p, papprox
      integer :: i
      real :: rel_error
      real :: abs_error

      p = 0.4e-4
      papprox = 0.41e-4

      do i = 1, 3
         abs_error = abs(p - papprox)
         rel_error = abs(p - papprox) / abs(p)

         write (output_unit, '("Absolute error = ",E12.4, ", Relative error = ",E12.4)') abs_error, rel_error
         p = p * 1.0e5
         papprox = papprox * 1.0e5
      end do

   end subroutine run_app
end program rel_and_abs_error