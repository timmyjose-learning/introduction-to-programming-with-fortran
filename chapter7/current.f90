program current
   use, intrinsic :: iso_fortran_env, only: input_unit, output_unit, real32
   implicit none

   call run_app()

contains
   subroutine run_app()
      implicit none

      real(kind=real32) :: resistance
      real(kind=real32), dimension(-20:20) :: current
      integer :: voltage

      write (output_unit, *) 'Enter the resistance...'
      read (input_unit, *) resistance

      do voltage = -20, 20
         current(voltage) = real(voltage, kind=real32) / resistance
      end do

      do voltage = -20, 20
         write (output_unit, '(F8.3)') current(voltage)
      end do
   end subroutine run_app
end program current