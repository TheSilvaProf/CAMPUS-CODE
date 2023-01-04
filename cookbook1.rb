puts "Bem vindo ao cookbook, sua rede social de receitas"
puts

receitas = []

while(1 == 1)
    puts "Digite o nome da receita: "
    nome = gets.chomp()
    
    receitas << nome
    
    #puts "Receita " + nome + " cadastrada com sucesso!" #Forma menos polida.
    puts "Receita #{nome} cadastrada com sucesso!"
    puts
    puts "==========RECEITAS CADASTRADAS=========="
    receitas.each do |receita|
        puts receita
    end
    puts
end
