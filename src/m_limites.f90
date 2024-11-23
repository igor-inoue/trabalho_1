module m_limites
    use, intrinsic :: iso_fortran_env, only: sp => real32, dp => real64, i4 => int32, i8 => int64
    implicit none
    private

    public :: limites !Torna a sub rotina limites pública

contains
    subroutine limites(a,b) !Sub rotina para perguntar os limites de integração
        real(kind=sp) :: a, b !Define as variáveis
        
        write(*,*) "Insira o limite inferior da integral:" !Questiona ao usuário qual o limite inferior
        read(*,*) a !Lê o limite inferior

        do !Loop para determinação do limite superior
            write(*,*) "Insira o limite superior da integral:" !Questiona ao usuário qual o limite superior
            read(*,*) b !Lê o limite superior
            if ( b > a ) then !O limite superior deve ser maior que o inferior
                exit !Caso isso seja verdade, está feito
            end if
            write(*,*) "O limite superior deve ser maior que o inferior!" !Caso contrário, é preciso perguntar novamente sobre o limite superior
        end do
    end subroutine limites
end module m_limites