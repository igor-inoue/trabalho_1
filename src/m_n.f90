module m_n
    use, intrinsic :: iso_fortran_env, only: sp => real32, dp => real64, i4 => int32, i8 => int64
    implicit none
    private

    public :: sN

contains

    subroutine sN(N) !Sub rotina para escolher o número de partições que o intervalo de integração será dividido.
        integer(kind=i4) :: N !Define a variável do número de partições.

        write(*,*) "Qual o número de partições que o intervalo será dividido?" !Faz a pergunta ao usuário.
        read(*,*) N !Lê a variável
    end subroutine
end module m_n