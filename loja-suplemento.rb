def olah()
    puts "Bem vindo a maior loja de suplementos da america latina"
    puts "Digite o seu nome: "
    nome = gets.chomp()
    puts "O que voce procura " + nome + "?"
    puts
end
def menu()
    
    puts "Digite [1] para pesquisar um suplemento."
    puts "Digite [2] para cadastrar um suplemento."
    puts "Digite [3] para sair."
end

olah()
menu()

