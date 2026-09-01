program total_average
   use, intrinsic :: iso_fortran_env, only: input_unit, output_unit
   implicit none

   call run_app()

contains
   subroutine run_app()
      implicit none

      real :: a, b, c
      real :: total
      real :: average

      write (output_unit, *) 'Enter the 3 numbers'
      read (input_unit, *) a, b, c

      total = a + b + c
      average = total  / real(3)

      write (output_unit, '("Total = ",F8.3,", average = ",F8.3)') total, average
   end subroutine run_app
end program total_average