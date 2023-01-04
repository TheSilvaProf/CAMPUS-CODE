def bem_vindo()
    puts "Bem vindo ao Cookbook, sua rede social de receitas."
end
bem_vindo()

def menu()
    puts "[1] Cadastrar uma receita"
    puts "[2] Ver todas as receitas"
    puts "[3] Sair"

    print "Escolha uma opcao: "
end

receitas = []

menu()

opcao = gets.to_i()

while(opcao != 3) do
    if(opcao == 1)
        puts "Digite o nome da receita: "
        nome = gets.chomp()    
        puts "Digite o tipo da receita: "
        tipo = gets.chomp()

        receitas << { nome: nome, tipo: tipo }    
        puts
        #puts "Receita " + nome + " cadastrada com sucesso!" #ou
        puts "Receita #{nome} cadastrada com sucesso!"
        puts
    elsif(opcao == 2)

        puts "========Receitas cadastradas========="
        #IMPRIME CADA RECEITA DIGITADA.
        # for receita in receitas do
        #     puts receita
        # end
        ###########################ou
        # receitas.each do |receita|
        #     puts receita
        # end
        ###########################ou
        receitas.each do |receita|
            puts "#{receita[:nome]} - #{receita[:tipo]}"
        end
        puts
    else
        puts "Opcao invalida"
    end
    menu()
    opcao = gets.to_i()
end

puts "Obrigado por usar o cookbook :)"