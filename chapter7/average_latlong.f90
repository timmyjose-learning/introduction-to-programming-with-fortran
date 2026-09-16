program average_latlong
   use, intrinsic :: iso_fortran_env, only: input_unit, output_unit, real32
   implicit none

   call run_app()

contains
   subroutine run_app()
      implicit none

      integer, parameter :: LIM = 3
      real(kind=real32), dimension(LIM, LIM) :: m1, m2, m3, m4
      integer :: i, j

      m4 = 0.0

      call read_matrix(m1, LIM)
      call read_matrix(m2, LIM)
      call read_matrix(m3, LIM)

      m4 = (m1 + m2 + m3) / real(3.0, kind=real32)

      write (output_unit, *) 'Average = '
      do i = 1, LIM
         write (output_unit, '(*(F8.3,1X))') (m4(i, j), j = 1, LIM)
      end do
   end subroutine run_app

   subroutine read_matrix(mat, lim)
      implicit none

      integer, intent(in) :: lim
      real(kind=real32), dimension(lim, lim), intent(inout) :: mat
      integer :: i, j

      do i = 1, lim
         read (input_unit, *) (mat(i, j), j = 1, lim)
      end do
   end subroutine read_matrix
end program average_latlong