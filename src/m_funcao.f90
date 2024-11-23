module m_funcao
    use, intrinsic :: iso_fortran_env, only: sp => real32, dp => real64, i4 => int32, i8 => int64
    implicit none
    private

    public :: f

contains

    function f(x) result(y)
        real(kind=sp), intent(in) :: x
        real(kind=sp) :: y

        y = sin(x)
    end function f
end module