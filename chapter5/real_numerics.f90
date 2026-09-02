program real_numerics
   use, intrinsic :: iso_fortran_env, only: output_unit
   implicit none

   call run_app()

contains
   subroutine run_app()
      implicit none

      integer, parameter :: sp = selected_real_kind(6, 37)
      integer, parameter :: dp = selected_real_kind(15, 307)
      integer, parameter :: qp = selected_real_kind(30, 291)

      real(kind=sp) :: s
      real(kind=dp) :: d
      real(kind=qp) :: q

      write (output_unit, *) 'Real Kinds information'
      write (output_unit, '("Kind: ", 3(I0,1X))') kind(s), kind(d), kind(q)
      write (output_unit, '("Digits: ", 3(I0,1X))') digits(s), digits(d), digits(q)
      write (output_unit, '("Epsilon: ", 3(E11.4,1X))') epsilon(s), epsilon(d), epsilon(q)
      write (output_unit, '("Tiny: ", 3(E0.6,1X))') tiny(s), tiny(d), tiny(q)
      write (output_unit, '("Huge: ", 3(E0.6,1X))') huge(s), huge(d), huge(q)
      write (output_unit, '("Precision: ", 3(I0,1X))') precision(s), precision(d), precision(q)
      write (output_unit, '("Range: ", 3(I0,1X))') range(s), range(d), range(q)
      write (output_unit, '("Max exponent: ", 3(I0,1X))') maxexponent(s), maxexponent(d), maxexponent(q)
      write (output_unit, '("Min exponent: ", 3(I0,1X))') minexponent(s), minexponent(d), minexponent(q)
      write (output_unit, '("Radix: ", 3(I0,1X))') radix(s), radix(d), radix(q)
   end subroutine run_app
end program real_numerics