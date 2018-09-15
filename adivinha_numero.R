### Projeto didática

## Adivinhação do número

k = 0
jogos = NULL
while (k <= 5) { # jogar 5 vezes
  x = sample(-10:10, 1)
  y = 1
  contador = 0
  
  tempo_inicial = Sys.time()
  while (y != x) {
    y = scan(nmax = 1)
    if (x < y){
      print("O número é menor")
    } else if (x > y) {
      print("O número é maior")
    } else {
      print("Parabéns, não fez mais que sua obrigação :)")
      tempo_final = Sys.time() - tempo_inicial
    }
    contador = contador + 1
  }
  k = k + 1
  tmp = cbind.data.frame("tentativas" = contador, "tempo_jogo" = tempo_final)
  jogos = rbind.data.frame(jogos, tmp)
}

jogos



