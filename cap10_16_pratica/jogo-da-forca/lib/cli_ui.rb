#Classe responsavel por representar a interface com o usuário

class CliUi

  def write(text)
    puts text
  end

  def read
    user_input = gets
    user_input
  end
end
