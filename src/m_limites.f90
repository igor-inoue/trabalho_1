module m_limites
    use, intrinsic :: iso_fortran_env, only: sp => real32, dp => real64, i4 => int32, i8 => int64
    implicit none
    private

    public :: limites

contains
    subroutine limites(a,b)
        real(kind=sp) :: a, b
        
        write(*,*) "Insira o limite inferior da integral:"
        read(*,*) a

        do
            write(*,*) "Insira o limite superior da integral:"
            read(*,*) b
            if ( b > a ) then
                exit
            end if
            write(*,*) "O limite superior deve ser maior que o inferior!"
        end do
    end subroutine
end module