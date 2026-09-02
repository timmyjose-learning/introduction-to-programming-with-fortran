program show_kinds
   use, intrinsic :: iso_fortran_env, only: real_kinds, integer_kinds, character_kinds, logical_kinds, output_unit
   implicit none

   call run_app

contains
   subroutine run_app()
      implicit none

      write (output_unit, '("Real kinds = ",*(I0,1X))') real_kinds
      write (output_unit, '("Integer kinds = ",*(I0,1X))') integer_kinds
      write (output_unit, '("Character kinds = ", *(I0,1X))') character_kinds
      write (output_unit, '("Logical kinds = ",*(I0,1X))') logical_kinds
   end subroutine run_app
end program show_kinds