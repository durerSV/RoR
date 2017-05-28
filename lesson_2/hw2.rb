=begin
2. Заполнить массив числами от 10 до 100 с шагом 5
=end
array = [0]
iterator = 0

while iterator <= 100
  
  if (iterator > 10)
    array << iterator
  end
  iterator += 5
end
puts array