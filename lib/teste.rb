def vantagens_poo()
  vantagens = ["Confiável", "Oportuno", "Manutenível", "Extensível", "Reutilizável", "Natural"]

  vantagens.each do |vantagem|
    case vantagem
    when "Confiável"
      puts "#{vantagem}: Como as partes são isoladas, temos um software mais seguro. Esse isolamento permite que alteremos apenas uma das partes sem alterar as outras."
    when "Oportuno"
      puts "#{vantagem}: Como dividimos em partes, elas podem ser desenvolvidas em paralelo."
    when "Manutenível"
      puts "#{vantagem}: De fácil manutenção ou atualização. Ao modificar uma única parte, você pode beneficiar todas as partes que usam o mesmo objeto."
    when "Extensível"
      puts "#{vantagem}: O software deve sempre crescer, para que permaneça útil."
    when "Reutilizável"
      puts "#{vantagem}: Usar um objeto de um sistema antigo para desenvolver um novo sistema e reutilizar o mesmo objeto em diferentes partes do projeto."
    when "Natural"
      puts "#{vantagem}: Fácil de entender. A principal preocupação é a funcionalidade e não os detalhes."
    end
  end
end

# Chame a função para imprimir as vantagens
vantagens_poo()