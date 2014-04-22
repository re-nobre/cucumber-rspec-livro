When(/^crio uma conta$/) do
  sign_up
end

Then(/^devo receber um email de notificação$/) do
  expect(last_email.to).to eq('email.qualquer@gmail.com')
end


