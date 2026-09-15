program rainfall
   use, intrinsic :: iso_fortran_env, only: input_unit, output_unit, real32
   implicit none

   call run_app()

contains
   subroutine run_app()
      implicit none

      integer, parameter :: NUM_MONTHS = 12
      real(kind=real32) :: total
      real(kind=real32) :: average
      real(kind=real32), dimension(NUM_MONTHS) :: rainfall
      integer :: i

      total = 0.0
      average = 0.0

      write (output_unit, *) 'Enter the rainfall values for each month of the year...'
      do i = 1, NUM_MONTHS
         read (input_unit, *) rainfall(i)
      end do

      do i = 1, NUM_MONTHS
         total = total + rainfall(i)
      end do

      average = total / 12.0_real32

      write (output_unit, '("Total = ",F8.3,", average = ",F8.3)') total, average
   end subroutine run_app
end program rainfall