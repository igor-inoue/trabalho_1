module m_integral
    use m_funcao
    use, intrinsic :: iso_fortran_env, only: sp => real32, dp => real64, i4 => int32, i8 => int64
    implicit none
    private

    public :: integral !Torna a função integral pública.

contains

    function integral(a,b,N) result(r) !Define a função integral, seus parâmetros a, b e N e seu resultado r
        real(kind=sp), intent(in) :: a, b !Define as variáveis dos limites de integração
        real(kind=sp) :: r !Define a variável do resultado
        real(kind=sp) :: step, ap, bp, termo !Define as variáveis utilizadas para o cálculo da integral
        integer(kind=i4), intent(in) :: N !Define a variável do número de partições N
        integer(kind=i4) :: i !Define a variável do loop

        step = (b - a) / N !Define o tamanho dos passos que serão dados pelo intervalo.

        r = 0.0 !Inicialmente, o resultado é nulo.

        do i = 1, N !Sequência que passa pelas N partições do intervalo
            ap = a + step * (i - 1) !Valor inferior da partição i
            bp = a + step * i !Valor superior da partição i

            termo = (bp - ap) / 6 * (f(ap) + 4 * f((ap + bp) / 2) + f(bp)) !Cálculo da integral da partição

            r = r + termo !Soma das integrais de cada partição
        end do
    end function integral
end module m_integral