program alloc_weights
   use, intrinsic :: iso_fortran_env, only: input_unit, output_unit, real32
   implicit none

   call run_app()

contains
   subroutine run_app()
      implicit none

      integer :: num_people
      real(kind=real32), allocatable, dimension(:) :: weights
      real(kind=real32) :: total
      real(kind=real32) :: average
      integer :: i
      integer :: stat
      character(len=512) :: errmsg

      total = 0.0
      average = 0.0

      write (output_unit, *) 'How many people?'
      read (input_unit, *) num_people

      allocate(weights(num_people), stat=stat, errmsg=errmsg)
      call check_stat(stat, errmsg)

      do i = 1, num_people
         write (output_unit, '("Enter weight ",I0)') i
         read (input_unit, *) weights(i)
      end do

      do i = 1, num_people
         total = total + weights(i)
      end do

      average = total / real(num_people, kind=real32)

      write (output_unit, '("Total = ",F8.3,", average = ",F8.3)') total, average
   end subroutine run_app

   subroutine check_stat(stat, errmsg)
      implicit none

      integer, intent(in) :: stat
      character(len=*), intent(in) :: errmsg

      if (stat /= 0) then
         error stop 'Error: ' // errmsg
      end if
   end subroutine check_stat
end program alloc_weights