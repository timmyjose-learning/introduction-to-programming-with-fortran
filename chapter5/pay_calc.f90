program pay_calc
   use, intrinsic :: iso_fortran_env, only: input_unit, output_unit
   implicit none

   call run_app()

contains
   subroutine run_app()
      implicit none

      real, parameter :: tax_rate = 0.25
      integer, parameter :: personal_allowance = 10000
      character(len=512) :: name_buffer
      character(len=:), allocatable :: name
      real :: gross_pay
      real :: net_pay
      integer :: stat
      character(len=512) :: errmsg


      write (output_unit, *) 'What is your name?'
      read (input_unit, '(A)') name_buffer

      allocate(character(len=len_trim(name_buffer)) :: name, stat=stat, errmsg=errmsg)
      call check_stat(stat, errmsg)

      name = trim(adjustl(name_buffer))

      write (output_unit, *) 'Enter your gross pay'
      read (input_unit, *) gross_pay

      net_pay = (gross_pay- personal_allowance) * (1.0 - tax_rate)
      write (output_unit, '("Name: ",A,", Gross Pay: ",F12.3,", Net Pay: ",F12.3)') name, gross_pay, net_pay

      deallocate(name, stat=stat, errmsg=errmsg)
      call check_stat(stat, errmsg)
   end subroutine run_app

   subroutine check_stat(stat, errmsg)
      implicit none

      integer, intent(in) :: stat
      character(len=*), intent(in) :: errmsg

      if (stat /= 0) then
         error stop 'Error: ' // errmsg
      end if
   end subroutine check_stat
end program pay_calc