puts "Bem vindo ao cookbook :)"

receitas = []

while(true) do
    puts "Digite o nome da receita."
    nome = gets.chomp()

    receitas << nome

    puts
    puts "Receita #{nome} cadastrada com sucesso."
    puts
    puts "=========== RECEITAS CADASTRADAS ============="
    puts receitas
    puts
end