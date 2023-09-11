
array1 = [1, 2, 3, 4, 5, 6]
array2 = [1, 2, 3, 4, 5, 6]
resultado = []
for i in 0...array1.length
  if i % 2 == 0
    resultado << array1[i] + array2[i]
  end
end



puts resultado.join(',')
