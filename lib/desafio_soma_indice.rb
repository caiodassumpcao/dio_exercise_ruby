#Desafio
# Crie um programa que, dadas duas listas de números inteiros e tamanho igual, some os índices pares de cada uma delas e print no console uma nova lista resultante dessa operação.
array_1 = [1, 2, 3, 4, 5]
array_2 = [1, 2, 3, 4, 5]



def soma(array_1, array_2)
  tamanho = array_1.length
  array_final = []

  tamanho.times do |n|
    if n.even?
      numero_index = array_1[n] + array_2[n]
      array_final.push(numero_index)
    end
  end
  array_final
end

resultado = soma(array_1, array_2)
puts resultado