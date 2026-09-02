program type_conv_issue2
   use, intrinsic :: iso_fortran_env, only: output_unit
   implicit none

   call run_app()

contains
   subroutine run_app()
      implicit none

      integer :: i, j, k
      real :: answer

      i = 5
      j = 2
      k = 4

      answer = i / j * k

      ! expected: 10, got: 8.0
      write (output_unit, '("answer = ",F8.3)') answer
   end subroutine run_app
end program type_conv_issue2
