module m_integral
    use m_funcao
    use, intrinsic :: iso_fortran_env, only: sp => real32, dp => real64, i4 => int32, i8 => int64
    implicit none
    private

    public :: integral

contains

    function integral(a,b,N) result(r)
        real(kind=sp), intent(in) :: a, b
        real(kind=sp) :: r
        real(kind=sp) :: step, ap, bp, termo
        integer(kind=i4), intent(in) :: N
        integer(kind=i4) :: i

        step = (b - a) / N

        r = 0.0

        do i = 1, N
            ap = a + step * (i - 1)
            bp = a + step * i

            termo = (bp - ap) / 6 * (f(ap) + 4 * f((ap + bp) / 2) + f(bp))

            r = r + termo
        end do
    end function integral
end module m_integral