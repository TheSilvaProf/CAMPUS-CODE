puts "Bem vindo ao cookbook, sua rede social de receitas :)"

receitas = []

puts "[1] Cadastrar uma receita"
puts "[2] Ver todas as receitas"
puts "[3] Sair"
print "Escolha uma opcao: "
opcao = gets.to_i()

while(opcao != 3) do
    if(opcao == 1)
        puts
        puts "Digite o nome da sua receita: "
        nome = gets.chomp()     
        
        receitas << nome
        puts
        #puts "Receita " + nome + " cadastrada com sucesso!" # Menos bonito.
        puts "Receita #{nome} cadastrada com sucesso"
        puts
    elsif(opcao == 2)    
        puts "============ RECEITAS CADASTRADAS ============="
        #receitas.each do |receita| #OU
        #    puts receita
        puts receitas
        puts
        
    else    
        puts "Opcao invalida."
    end
    puts "[1] Cadastrar uma receita"
    puts "[2] Ver todas as receitas"
    puts "[3] Sair"
    print "Escolha uma opcao: "
    opcao = gets.to_i()
    
end

puts 'Obrigado por usar o CookBook!'