module PalavraReversa
  def self.puts text
    print text.reverse.to_s
  end
end


module PalavraNormal
  def self.puts text
    print text.reverse.to_s
  end
end


PalavraReversa::puts 'O resultado e'
PalavraNormal::puts 'Palavra Normal'
