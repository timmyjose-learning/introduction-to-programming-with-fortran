program int_numerics
   use, intrinsic :: iso_fortran_env, only: output_unit
   implicit none

   call run_app()

contains
   subroutine run_app()
      implicit none

      ! Note: selected_int_kind takes the decimal exponent range, not a bit width
      integer(kind=selected_int_kind(2)) :: i8
      integer(kind=selected_int_kind(4)) :: i16
      integer(kind=selected_int_kind(8)) :: i32
      integer(kind=selected_int_kind(18)) :: i64
      integer(kind=selected_int_kind(38)) :: i128

      write (output_unit, *) 'Integer kind', 'Huge'
      write (output_unit, '(A,1X,I0)') 'i8', huge(i8)
      write (output_unit, '(A,1X,I0)') 'i16', huge(i16)
      write (output_unit, '(A,1X,I0)') 'i32', huge(i32)
      write (output_unit, '(A,1X,I0)') 'i64', huge(i64)
      write (output_unit, '(A,1X,I0)') 'i128', huge(i128)
   end subroutine run_app
end program int_numerics