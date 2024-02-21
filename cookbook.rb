INSERIR_RECEITA=1
VER_RECEITAS=2
SAIR=3
BUSCAR_RECEITAS=4

def bem_vindo
  puts "bem-vindo ao cookbook, sua rede social de receitas"
end

def menu
  puts "Escolha uma opção: "
  puts "[#{INSERIR_RECEITA}] cadastrar uma receita"
  puts "[#{VER_RECEITAS}] ver todas as receitas"
  puts "[#{SAIR}] sair"

  return gets.to_i
end

def inserir_receita(receitas)
  puts "digite o nome da receita"
  nome = gets.chomp

  puts "digite o tipo da receita, se é uma entrada, prato principal, sobremesa ou bebida"
  tipo = gets.chomp
  receitas << {nome: nome, tipo: tipo} # colocar o tipo dentro do array
  # hash: é um dicionário

  puts "receita #{nome} cadastrada com sucesso!"
  puts "digite os ingredientes da receita #{nome}"
  ingredientes = gets.chomp
  puts "os ingredientes da receita #{nome} são: #{ingredientes}"
  puts "ótimo! os ingredientes já foram salvos. Agora escreva o passo a passo da receita #{nome}"
  modo_de_preparo = gets.chomp
  puts "sua receita #{nome} já está salva em nosso sistema!"
end

def imprimir_receitas(r)
  puts "===== receitas cadastradas ====="
  r.each do |receita|
    puts "#{receita[:nome]} - #{receita[:tipo]}"
  end
  puts
  if receitas.empty?
    puts"nenhuma receita cadastrada"
end
end 
bem_vindo

receitas = []
opcao = menu

while (opcao != SAIR) do 
  if (opcao == 1)
    inserir_receita(receitas)
  elsif opcao == VER_RECEITAS
    imprimir_receitas(receitas)
  elsif opcao == SAIR
    break # Saída do loop
  else # guarda chuva: se nada for verdade ele é executado {default}
    puts "opção inválida"
  end

  opcao = menu
end

puts "obrigado por usar o cookbook"

  

