Quando(/^começo um novo jogo$/) do
  start_new_game
end

Dado (/^que comecei um jogo$/) do
  start_new_game
end

Quando(/^escolho que a palavra sorteada deverá ter "(.*?)" letras$/) do |number_of_letters|
  type(number_of_letters)
end

Então(/^o jogo termina com a seguinte mensagem na tela:$/) do |text|
  assert_passing_with(text)
end

Quando(/^termino o jogo$/) do
  type("fim")
end

Dado(/^o jogo tem as possíveis palavras para sortear:$/) do |words_table|
  words = words_table.rows.map(&:last).join("")
  set_rafflable_words(words)
end

Dado(/^que escolhi que a palavra a ser sorteada deverá ter "(.*?)" letras$/) do |number_of_letters|
  type(number_of_letters)
end

Quando(/^tento adivinhar que a palavra tem a letra "(.*?)"$/) do |letter|
  type(letter)
end

Então(/^o jogo mostra que adivinhei uma letra com sucesso$/) do
  assert_partial_output("Você adivinhou uma letra com sucesso.", all_stdout)
end

Então(/^o jogo mostra que errei a adivinhação da letra$/) do
  assert_partial_output("Você errou a letra.", all_stdout)
end

Quando(/^tento adivinhar que a palavra tem a letra "(.*?)" "(.*?)" vezes$/) do |letter, number_of_guesses|
  number_of_guesses.to_i.times do
    type(letter)
  end
end


