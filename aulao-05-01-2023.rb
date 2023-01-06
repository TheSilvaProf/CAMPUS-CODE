ADICIONAR = 1
VER = 2
SAIR = 3

puts "Bem vindo!"
def menu()
    puts "[#{ADICIONAR}] Adicionar."
    puts "[#{VER}] Ver."
    puts "[#{SAIR}] Sair."
    print "Escolho uma opcao: "
    return gets.to_i()
end
def aficionar()
    puts "Digite o nome da receita"
    nome = gets.chomp()
    puts "Digite o tipo da receita"
    tipo = gets.chomp()
    puts "Receita #{nome} cadstrada!"
    return {nome: nome, tipo: tipo}
    puts
end
def ver(r)
    puts "======== receitas========="
    #FOR EM RUBY
    # for receita in receitas do
    #     puts receita
    # end
    #--MESMO QUE O FOR:
    r.each do |receita|
    #     puts receita
    # end
    #---MESMO QUE OS DOIS:
        puts "None: #{receita[:nome]} -------> Tipo: #{receita[:tipo]}"
        puts
    end
    if r.empty?
        puts "Sem receita ainda"
    #puts receitas
    end
end
receitas = []
opcao = menu()
loop do  
    if (opcao == ADICIONAR)
        receitas << aficionar()
    elsif (opcao == VER)
        ver(receitas)
    elsif (opcao == SAIR)
        break
        
    else
        puts
        puts "Opcao invalida."
        puts
    end
    opcao = menu()

end
puts
puts "Obrigado!"