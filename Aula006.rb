puts "Bem vindo ao cookbook :)"

receitas = []

puts "[1] Cadastrar uma receita."
puts "[2] Ver receitas."
puts "[3] Sair."
print "Escolha uma opcao."
opcao = gets.to_i

while(opcao != 3) do
    if(opcao == 1)
        puts "Digite o nome da receita: "
        nome = gets.chomp()
        puts "Digite o tipo da receita: "
        tipo = gets.chomp()
        receitas << {nome: nome, tipo: tipo}
        puts
        puts "Receita #{nome} cadastrada com sucesso."
        puts
    elsif(opcao == 2)
        puts "=========== RECEITAS CADASTRADAS ============="
        receitas.each do |receita|
            puts "#{receita[:nome]} -- {#receita[:tipo]}"
        end
        puts
    else
        puts "Opcao inv[alida"
    end
    puts "[1] Cadastrar uma receita."
    puts "[2] Ver receitas."
    puts "[3] Sair."
    print "Escolha uma opcao."
    opcao = gets.to_i
end