program check
    use, intrinsic :: iso_fortran_env, only: sp => real32, dp => real64, i4 => int32, i8 => int64
    implicit none

    real(kind=sp) :: a, b, r

    a = 1
    b = 2

    r = integral(a,b)

    write(*,*) "A integral do seno de x variando de", a, "até", b, "é:"
    write(*,*) r

contains

    function integral(a,b) result(r)
        real(kind=sp), intent(in) :: a, b
        real(kind=sp) :: r
        real(kind=sp) :: step, ap, bp, termo
        integer(kind=i4) :: N, i

        N = 100

        step = (b - a) / N

        r = 0.0

        do i = 1, N
            ap = a + step * (i - 1)
            bp = a + step * i

            termo = (bp - ap) / 6 * (sin(ap) + 4 * sin((ap + bp) / 2) + sin(bp))

            r = r + termo
        end do
    end function
end program check
