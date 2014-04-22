module SignUpHelpers
  def sign_up
    visit '/cadastro'

    fill_in 'Email', with: 'email.qualquer@gmail.com'
    fill_in 'Senha', with: '12345678'
    fill_in 'Confirmação', with: '12345678'

    click_button 'Criar conta'
  end
end

World(SignUpHelpers)
