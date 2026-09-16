program theatre
   use, intrinsic :: iso_fortran_env, only: input_unit, output_unit
   implicit none

   call run_app()

contains
   subroutine run_app()
      implicit none

      integer, parameter :: NROWS = 2
      integer, parameter :: NCOLS = 3
      integer, parameter :: NFLOORS = 4
      integer :: row, col, flr
      integer, dimension(NROWS, NCOLS, NFLOORS) :: theatre

      do row = 1, NROWS
         do col = 1, NCOLS
            read (input_unit,*) (theatre(row,col,flr), flr=1,NFLOORS)
         end do
      end do

      write (output_unit, *) 'The seating plan is...'
      do row = 1, NROWS
         do col = 1, NCOLS
            write (output_unit, '(*(I0,1X))') (theatre(row,col,flr), flr=1,NFLOORS)
         end do
      end do
   end subroutine run_app
end program theatre