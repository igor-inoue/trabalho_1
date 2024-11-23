program check
    use, intrinsic :: iso_fortran_env, only: sp => real32, dp => real64, i4 => int32, i8 => int64
    implicit none

    real(kind=sp) :: x, y

    write(*,*) "Insira um valor de x"
    read(*,*) x

    y = f(x)

    write(*,*) "sen(x) =", y

contains

    function f(x) result(y)
        real(kind=sp), intent(in) :: x
        real(kind=sp) :: y

        y = sin(x)
    end function f
end program check
