ACRECENTAR = 1
VER = 2
SAIR = 3


puts "Bem vindo"
def menu()
    puts "[#{ACRECENTAR}] cadastro."
    puts "[#{VER}] ver."
    puts "[#{SAIR}] Sair."
    print "Escolha uma opcao: "
    return gets.to_i()
end
def acrecentar()
    puts "Digite o nome da receita."
    nome = gets.chomp()
    puts "Digite o tipo da receita."
    tipo = gets.chomp()
    puts
    puts "Receita #{nome} cadastrada com sucesso"
    puts
    return { nome:nome, tipo:tipo }
end
def ver(r)
    puts "____________Receitas cadastradas____________"
    r.each do |receita|
        puts "#{receita[:nome]} =========> #{receita[:tipo]}"
    end
    if r.empty?
        puts "Zero receitas cadastradas"
        puts
    end

end
receitas = []
opcao = menu()
loop do
    if(opcao == ACRECENTAR)
        receitas << acrecentar()
    elsif(opcao == VER)
        ver(receitas)
    elsif(opcao == SAIR)
        break
    else
        puts "Invalido."    
    end
    opcao = menu()

end
puts
puts "Volte sempre!"