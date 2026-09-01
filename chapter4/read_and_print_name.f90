program read_and_print_name
   use, intrinsic :: iso_fortran_env, only: input_unit, output_unit
   implicit none

   call run_app()

contains
   subroutine run_app()
      implicit none

      character(len=128) :: first_name

      write (output_unit, *) 'What is you first name?'
      read (input_unit, '(A)') first_name
      write (output_unit, '("Well, hello there, ",A)') first_name
   end subroutine run_app
end program read_and_print_name