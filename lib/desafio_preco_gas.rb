preco_do_gas = gets.chomp.to_i
imposto = 0.1
imposto_cobrado = gets.chomp.to_i
imposto_variavel = gets.chomp.to_i


preco_imposto_fixo = (preco_do_gas * imposto) + preco_do_gas
conversao_imp_variavel = (imposto_variavel / 100.0) + 1.0

if imposto_cobrado == 1
  preco_final = (preco_imposto_fixo * conversao_imp_variavel)
else
  preco_final = preco_imposto_fixo
end

if preco_final.to_i == preco_final
  puts "O preço do gás nesse mês é de R$#{preco_final.to_i}"
else
  puts "O preço do gás nesse mês é de R$#{preco_final.round(1)}"
end







