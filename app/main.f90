program main
  use m_integral
  use, intrinsic :: iso_fortran_env, only: sp => real32, dp => real64, i4 => int32, i8 => int64
  implicit none
  real(kind=sp) :: a, b, r

  a = 1.0
  b = 3.0

  r = integral(a,b)

  write(*,'(a, f4.2, a, f4.2)') "A integral do seno de x variando de ", a, " até ", b, " é:"
  write(*,*) r

end program main
