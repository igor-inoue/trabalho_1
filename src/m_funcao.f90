module m_funcao
    use, intrinsic :: iso_fortran_env, only: sp => real32, dp => real64, i4 => int32, i8 => int64
    implicit none
    private

    public :: f

contains

    function f(x) result(y) !Define a função que será integrada.
        real(kind=sp), intent(in) :: x !Define a variável x, o argumento da função.
        real(kind=sp) :: y !Define a variável y, resultado da função.
        real(kind=sp) :: pi, sigma, mu !Define as constantes da função.

        pi = 2 * asin(1.0)
        sigma = 1.0
        mu = 0.0

        y = sin(x) !Aplica a função na variável x.
    end function f
end module m_funcao