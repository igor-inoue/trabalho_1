module m_funcao
    use, intrinsic :: iso_fortran_env, only: sp => real32, dp => real64, i4 => int32, i8 => int64
    implicit none
    private

    public :: sN

contains

    subroutine sN(N)
        integer(kind=i4) :: N

        write(*,*) "Qual o número de partições que o intervalo será dividido?"
        read(*,*) N
    end subroutine

end module