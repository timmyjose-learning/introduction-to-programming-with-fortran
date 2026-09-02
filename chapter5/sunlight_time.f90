program sunlight_time
   use, intrinsic :: iso_fortran_env, only: output_unit
   implicit none

   call run_app()

contains
   subroutine run_app()
      implicit none

      real, parameter :: light_speed = 9.46 * 10.0 ** 12
      real, parameter :: one_year = 365.25 * 24 * 60 * 60
      real, parameter :: distance = 150.0 * 10**6
      real :: time_taken

      time_taken = distance / (light_speed / one_year)

      write (output_unit, '("Time taken for sunlight to reach earth: ",F12.3," seconds")') time_taken
   end subroutine run_app
end program sunlight_time