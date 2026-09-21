program whole_array_demo1
   use, intrinsic :: iso_fortran_env, only: input_unit, output_unit, real32
   implicit none

   call run_app()

contains
   subroutine run_app()
      implicit none

      real(kind=real32), parameter :: IN_TO_CM = 2.54
      integer, parameter :: NMONTHS = 12
      real(kind=real32), dimension(1:NMONTHS) :: rainfall_inches
      real(kind=real32), dimension(NMONTHS) :: rainfall_cms
      integer :: i

      rainfall_inches = 0.0
      rainfall_cms = 0.0

      read (input_unit, *) rainfall_inches

      rainfall_cms = rainfall_inches * IN_TO_CM

      write (output_unit, '("Rainfall (inches), Rainfall (cms)")')
      write (output_unit, '(*(F8.3,15X,F8.3,/))') (rainfall_inches(i), rainfall_cms(i), i = 1, NMONTHS)
   end subroutine run_app
end program whole_array_demo1