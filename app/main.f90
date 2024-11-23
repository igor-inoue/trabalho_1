program main
  use m_N !Chama módulo para escolher o número de partições que o intervalo de integração será dividido.
  use m_integral !Chama módulo para calcular a integral.
  use m_limites !Chama módulo para perguntar os limites de integração.
  use mod_tictoc !Chama módulo para marcar o tempo de execução do código.
  use, intrinsic :: iso_fortran_env, only: sp => real32, dp => real64, i4 => int32, i8 => int64
  implicit none

  real(kind=sp) :: a, b, r !Define as variáveis reais do problema.
  integer(kind=i4) :: N !Define a variável inteira do problema.

  type(tictoc) :: cronometro

  call limites(a,b) !Chama a subrotina para perguntar ao usuário os limites de integração.

  call sN(N) !Chama a subrotina para perguntar ao usuário o número de partições que o intervalo de integração será dividido.

  call cronometro%reset() !Zera o cronômetro.
  call cronometro%tic() !Inicia a contagem do tempo de execução.

  r = integral(a,b,N) !Calcula a integral, dado os limites de integração e o número de partições.

  call cronometro%toc() !Finaliza a contagem do tempo de execução.

  write(*,'(a, f0.2, a, f0.2)') "A integral do seno de x variando de ", a, " até ", b, " é:" !Texto para fornecer o valor da integral.
  write(*,*) r !Valor da integral

  write(*,'(a, i0, a)') "O tempo utilizado para calculá-la utilizando ", N, " partições foi:" !Texto para fornecer o tempo de execução do código.
  write(*,*) cronometro%t_tot, " segundos" !Tempo de execução do código.

end program main
