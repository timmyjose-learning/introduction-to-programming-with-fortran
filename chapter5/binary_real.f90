program binary_real
   use, intrinsic :: iso_fortran_env, only: input_unit, output_unit, int32, real32
   implicit none

   call run_app()

contains
   subroutine run_app()
      implicit none

      real(kind=real32) :: r
      integer(kind=int32) :: n

      write (output_unit, *) 'Enter a real number'
      read (input_unit, *) r

      n = transfer(r, n)
      write (output_unit, '(A)') to_string(n)
   end subroutine run_app

   function to_string(num) result(bitstr)
      implicit none

      integer(kind=int32), intent(in) :: num
      character(len=:), allocatable :: bitstr
      character(len=32) :: buffer
      integer :: i

      do i = 0, 31
         if (btest(num, i)) then
            buffer(32-i:32-i) = '1'
         else
            buffer(32-i:32-i) = '0'
         end if
      end do

      bitstr = buffer
   end function
end program binary_real