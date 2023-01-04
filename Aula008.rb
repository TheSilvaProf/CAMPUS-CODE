INSERIR_RECEITAS = 1
VER_RECEITAS = 2
SAIR = 3

def bem_vindo()
    puts "Bem vindo ao cookbook :)"
end

def menu()
    puts "[#{INSERIR_RECEITAS}] Cadastrar uma receita."
    puts "[#{VER_RECEITAS}] Ver receitas."
    puts "[#{SAIR}] Sair."
    print "Escolha uma opcao. "
    return gets.to_i
end

def inserir_receitas()
    puts "Digite o nome da receita: "
    nome = gets.chomp()
    puts "Digite o tipo da receita: "
    tipo = gets.chomp()
    puts
    puts "Receita #{nome} cadastrada com sucesso."
    puts
    return {nome: nome, tipo: tipo}

end

def ver_receitas(r)
    puts "=========== RECEITAS CADASTRADAS ============="
    r.each do |receita|
        puts "#{receita[:nome]} -- {#receita[:tipo]}"
    end
    puts
    if r.empty?
        puts "Zero receitas cadastradas :("
    end
end

bem_vindo()
receitas = []
opcao = menu()

while(opcao != SAIR) do
    if(opcao == INSERIR_RECEITAS)
        receitas << inserir_receitas()
    elsif(opcao == VER_RECEITAS)
        ver_receitas(receitas)
    else
        puts "Opcao invalida"
    end    
    opcao = menu()
end
puts "Obrigado por usar a nossa rede social!"