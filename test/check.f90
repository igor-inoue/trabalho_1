program check
    use, intrinsic :: iso_fortran_env, only: sp => real32, dp => real64, i4 => int32, i8 => int64
    implicit none
    
    real(kind=sp) :: pi

    pi = 2 * asin(1.0)

    write(*,*) pi

    end program check