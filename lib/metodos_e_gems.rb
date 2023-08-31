require 'os'
def meu_SO
  if OS.windows?
    "Windows"
  elsif OS.linux?
    "Linux"
  elsif OS.mac?
    "Mac"
  else
    "Nao identificamos o sistema Operacional"
  end
end

puts "Meu Pc e #{OS.bits} bits, possui #{OS.cpu_count} cores e o sist. operacional e #{meu_SO}"