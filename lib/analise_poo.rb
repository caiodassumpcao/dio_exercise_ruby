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

def dominios()
  tipos_dominio = ["Aplicaçao", "Negocio", "Arquitetura", "Base"]

  tipos_dominio.each do |tipos|
    case tipos
    when "Aplicaçao"
      puts "O dominio de arquitetura fornece abstraçoes para a arquitetura de hardware ou sofware utilizado"
    when "Negocio"
      puts "O dominio de negocio descreve classes inerentes a uma determinada area do conhecimento"
    when "Arquitetura"
      puts "O dominio de aplicaçao descreve classes 'cola', que servem para fazer as classes dos demais dominios funcionarem em um sistema"
    when "Base"
      puts ""
    end

  end
end