When(/^um visitante faz um cadasro com o nome "(.*?)"$/) do |user_name|
  @user_name = user_name
end

Then(/^ele recebe um email com o seguinte texto:$/) do |email_body|
  last_email = "  Olá "+ @user_name +",\n\n  Bem vindo ao nosso site. Espero que você tenha uma ótima experiência aqui"
  expect(last_email).to eq(email_body)
end
