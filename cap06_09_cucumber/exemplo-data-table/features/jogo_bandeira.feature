#language: pt

Funcionalidade: Jogo da bandeira

  Cenário: jogador acha a bandeira
    Dado que o jogador começou a jogar
    E que a bandeira está na posição (1,1)

    Quando o jogador checa a posição (0,0)
    Então o tabuleiro deve ficar assim:
    |x|_|
    |_|_|

    Quando o jogador checa a posição (1,1)
    Então o tabuleiro deve ficar assim:
    |x|_|
    |_|o|
