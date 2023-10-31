class Fish
  def method_missing(method_name)
    puts "Peixe não pode #{method_name} ainda"
  end
  def nadar
    puts 'O peixe está nadando'
  end
end

carpa = Fish.new
carpa.nadar
carpa.andar
carpa.voar



teste = Math.sqrt(16)