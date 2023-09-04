def vantagens_poo()
  vantagens = ["Confiavel", "Oportuno", "Manutenivel", "Extensivel", "Reutilizavel", "Natural"]

  vantagens.each do |vantagem|
    case vantagem
    when "Confiavel"
      puts "#{vantagem}: Como as partes sao isoladas temos um software mais seguro. Esse isolamento permite que alteramos apenas uma das partes sem alterar as outras"
    when "Oportuno"
      puts "#{vantagem}: Como dividimos em partes, elas podem ser desenvolvidas em paralelo"
    when "Manutenivel"
      puts "#{vantagem}: De facil manutençao ou atualizaçao. Ao modificar uma unica parte voce pode beneficiar todas as partes que usam o mesmo objeto"
    when "Extensivel"
      puts "#{vantagem}: O software deve sempre crescer, para que permaneça util"
    when "Reutilizavel"
      puts "#{vantagem}: Usar um objeto de um sistema antigo para desenvolver um novo sistema e reutilizar o mesmo objeto em diferentes partes do projeto"
    when "Natural"
      puts "#{vantagem}: Facil de entender. A principal preocupaçao e a funcionalidade e nao os detalhes"
    end
  end
end

vantagens_poo()