program weights
   use, intrinsic :: iso_fortran_env, only: input_unit, output_unit, real32
   implicit none

   call run_app()

contains
   subroutine run_app()
      implicit none

      integer, parameter :: NUM_PEOPLE = 10
      real(kind=real32), dimension(NUM_PEOPLE) :: weights
      real(kind=real32) :: total
      real(kind=real32) :: average
      integer :: i

      total = 0.0
      average = 0.0

      write (output_unit, *) 'Enter the weights...'
      do i = 1, NUM_PEOPLE
         read (input_unit, *) weights(i)
      end do

      do i = 1, NUM_PEOPLE
         total = total + weights(i)
      end do

      average = total / real(NUM_PEOPLE)

      write (output_unit, '("Total = ",F8.3,", average = ",F8.3)') total, average
   end subroutine run_app
end program weights
