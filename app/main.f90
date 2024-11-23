program main
  use m_integral
  use m_limites
  use mod_tictoc
  use m_n
  use, intrinsic :: iso_fortran_env, only: sp => real32, dp => real64, i4 => int32, i8 => int64
  implicit none

  real(kind=sp) :: a, b, r
  integer(kind=i4) :: N

  type(tictoc) :: cronometro

  call limites(a,b)

  call sN(N)

  call cronometro%reset()
  call cronometro%tic()

  r = integral(a,b)

  call cronometro%toc()

  write(*,'(a, f4.2, a, f4.2)') "A integral do seno de x variando de ", a, " até ", b, " é:"
  write(*,*) r

  write(*,*) "O tempo utilizado para calculá-la utilizando ", N, " partições", "foi:"
  write(*,*) cronometro%t_tot, " segundos"

end program main
