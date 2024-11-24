# Integração numérica pela regra de Simpson

## Descrição

Esse programa permite o cálculo de integrais definidas numericamente pela regra de Simpson. Ele funciona por meio do Fortran Packet Manager (fpm).

## Instalação

Para utilização do programa é preciso utilizar o fpm. Para instalá-lo, seja no Linux (por meio do terminal) ou no Windows (por meio do WSL), deve-se executar os seguintes comandos:

```
git clone https://github.com/fortran-lang/fpm
cd fpm
sudo ./install.sh --prefix=/usr
```

Para instalar o programa, executa-se o comando:

```
https://github.com/igor-inoue/trabalho_1
```

## Uso

Por padrão, a função cuja integral será calculada é o seno. É possível alterá-la na linha 14 do arquivo `m_funcao.f90`.

Com o fpm devidamente instalado, o programa tem início por meio do comando

```
fpm run trabalho_1
```

Em seguida, é perguntado quais são os limites inferior e superior da integral, sendo garantido que o limite superior seja maior que o inferior.

Ainda, o código pergunta em quantas partições o intervalo de integração será dividido. Na integração numérica pela regra de Simpson, quanto maior o número de partições, maior será a precisão do valor da integral.

Por fim, é fornecido o valor da integral e o tempo de execução do programa.
