ADD = 1
VER = 2
SAIR = 3

puts "##########  OLAH!  ##########"
puts

def menu()
    puts "[#{ADD}] Inserir."
    puts "[#{VER}] Ver."
    puts "[#{SAIR}] Sair."
    print "Escolha: "
    return gets.to_i
end
def inserir()
    print "Digite o nome da receita: "
    nome = gets.chomp()
    print "Digite o tipo da receita: "
    tipo = gets.chomp()
    puts
    puts "Receita #{nome} cadastrada!"    
    puts
    return {nome: nome, tipo: tipo}
end
def ver(r)
    puts "########## RECEITAS ##########"
    r.each do |receita|
        puts "NOME: #{receita[:nome]} -- TIPO: #{receita[:tipo]}"
        puts
    end
    if r.empty?
        puts "Sem receitas ainda."
        puts
    end
    
end

receitas = []
escolha = menu()

loop do
    if (escolha == ADD)
        receitas << inserir()
    elsif (escolha == VER)
        ver(receitas)
    elsif (escolha == SAIR)
        break
    else
        puts "Opcao invalida!"
        ptus
    end
    escolha = menu()
end
puts "######## VALEU! ########"
