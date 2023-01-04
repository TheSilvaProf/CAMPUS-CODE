def bem_vindo()
    puts "Bem vindo ao cookbook :)"
end

def menu()
    puts "[1] Cadastrar uma receita."
    puts "[2] Ver receitas."
    puts "[3] Sair."
    print "Escolha uma opcao."
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
end

bem_vindo()
receitas = []
opcao = menu()

while(opcao != 3) do
    if(opcao == 1)
        receitas << inserir_receitas()
    elsif(opcao == 2)
        ver_receitas(receitas)
    else
        puts "Opcao inv[alida"
    end    
    opcao = menu()
end