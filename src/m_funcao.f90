module m_funcao
    use, intrinsic :: iso_fortran_env, only: sp => real32, dp => real64, i4 => int32, i8 => int64
    implicit none
    private

    public :: f

contains

    function f(x) result(y)
        real(kind=sp), intent(in) :: x
        real(kind=sp) :: y
        real(kind=sp) :: pi, sigma, mu

        pi = 2 * asin(1.0)
        sigma = 1.0
        mu = 0.0

        y = 1 / (sigma * sqrt(2 * pi)) * exp(-0.5 * ((x - mu) / sigma) ** 2)
    end function f
end module m_funcao