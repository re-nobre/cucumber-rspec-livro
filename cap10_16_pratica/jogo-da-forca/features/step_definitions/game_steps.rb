Quando(/^começo um novo jogo$/) do
  start_new_game
end

# Então(/^vejo na tela:$/) do |text|
#   assert_partial_output(text, all_stdout)
# end

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
