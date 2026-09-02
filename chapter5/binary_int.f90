program binary_int
   use, intrinsic :: iso_fortran_env, only: input_unit,  output_unit, int32
   implicit none

   call run_app()

contains
   subroutine run_app()
      implicit none

      integer :: i
      integer(kind=int32) :: i32

      write (output_unit, *) 'Enter an integer'
      read (input_unit, *) i

      ! `int` converst the integer into the specific kind
      i32 = int(i, kind=int32)
      write (output_unit, '(A)') to_string(i32, 0, 31)
   end subroutine run_app

   function to_string(num, low, high) result(bitstr)
      implicit none

      integer, intent(in) :: num
      integer, intent(in) :: low
      integer, intent(in) :: high
      character(len=:), allocatable :: bitstr
      character(len=512) :: buffer
      integer :: stat
      character(len=512) :: errmsg
      integer :: i

      do i = low, high
         if (btest(num, i)) then
            buffer(high+1-i:high+1-i) = '1'
         else
            buffer(high+1-i:high+1-i) = '0'
         end if
      end do

      allocate(character(len=len_trim(buffer)) :: bitstr, stat=stat, errmsg=errmsg)
      call check_stat(stat, errmsg)

      do i = 1, len_trim(buffer)
         bitstr(i:i) = buffer(i:i)
      end do
   end function to_string

   subroutine check_stat(stat, errmsg)
      implicit none

      integer, intent(in) :: stat
      character(len=*), intent(in) :: errmsg

      if (stat /= 0) then
         error stop 'Error: ' // errmsg
      end if
   end subroutine check_stat
end program binary_int