ADICIONAR = 1
VER = 2
SAIR = 3

puts "Bem vindo!"
def menu()
    puts "[#{ADICIONAR}] Adicionar."
    puts "[#{VER}] Ver."
    puts "[#{SAIR}] Sair"
    print "Escolha: "
    return gets.to_i
end
def inserir()
    puts
    print "Digite o nome da receita: "
    nome = gets.chomp()
    print "Digite o tipo da receita: "
    tipo = gets.chomp()
    puts
    puts "Receita #{nome} cadastrada!"
    return {nome: nome, tipo: tipo}
    puts
end
def ver(receitas)
    puts "__________RECEITAS__________"
    receitas.each do |receita|
        puts "#{receita[:nome]} ====> #{receita[:tipo]}"
    end
    if receitas.empty?
        puts "Sem receitas ainda."
    end
end
receitas = []
escolha = menu()
loop do
    if (escolha == ADICIONAR)
        receitas << inserir()
    elsif (escolha == VER)
        ver(receitas)
    elsif (escolha == SAIR)
        break
    else
        puts
        puts "Opcao invalida!"
    end
    escolha = menu()
end