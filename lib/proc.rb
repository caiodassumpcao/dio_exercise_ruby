# 1. Correção: Mudar "Proc.new" para "proc"
hello_proc = proc do
  puts "hello World"
end

# 2. Correção: Não é necessário reatribuir a mesma variável, então vamos remover esta linha.
# hello_proc = proc do
#   puts "PROC: "
#   puts "Hello World"
# end

hello_proc.call

# 3. Correção: O bloco precisa receber um argumento |msg| para corresponder ao método "call".
hello_proc = proc do |msg|
  puts msg
end

hello_proc.call("Hello, World!") # Vamos adicionar uma mensagem como argumento

# 4. Correção: Mudar "lambda" para "->"
hello_lambda = ->(msg) do
  puts msg
end

hello_lambda.call("Hello, Lambda!") # Vamos adicionar uma mensagem como argumento