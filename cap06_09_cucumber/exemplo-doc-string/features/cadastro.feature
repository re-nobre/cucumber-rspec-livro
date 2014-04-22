#language: pt

Funcionalidade: Cadastro de usuários
  Cenário: Cadastro com sucesso
    Quando um visitante faz um cadasro com o nome "João da Silva"
    Então ele recebe um email com o seguinte texto:
    """
      Olá João da Silva,

      Bem vindo ao nosso site. Espero que você tenha uma ótima experiência aqui
    """
