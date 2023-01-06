CADASTRAR = 1
VER = 2
SAIR = 3

puts "Olah!"
puts
receitas = []
def menu()
    puts "[#{CADASTRAR}] Cadstrar."
    puts "[#{VER}] Ver."
    puts "[#{SAIR}] Sair."
    print "Escolha: "
    return gets.to_i
end
def cadastrar()
    print "Digite o nome da receita ==> "
    nome = gets.chomp()
    print "Digite o tipo da receita ==> "
    tipo = gets.chomp()
    puts
    puts "Receita #{nome} cadastrada!"
    puts
    return {nome: nome, tipo: tipo}
end
def ver(receitas)
    puts "________RECEITAS_________"
    receitas.each do |receita|
        puts "Nome da receita: #{receita[:nome]} ---> Tipo da receita: #{receita[:tipo]}"
        puts
    end
    puts
    if receitas.empty?
        puts "Nada cadastrado ainda."
    end
    
end

escolha = menu()
puts
loop do
    if (escolha == CADASTRAR)
        receitas << cadastrar()
    elsif (escolha == VER)
        ver(receitas)
    elsif (escolha == SAIR)
        break
    else
        puts "Opcao invalida!"
    end
    escolha = menu()

    puts

end
puts
puts "Tchau!"
