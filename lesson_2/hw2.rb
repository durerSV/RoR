=begin
2. Заполнить массив числами от 10 до 100 с шагом 5
=end
array = []
10.step(by: 5, to: 100) do |x|
  array << x 
end
puts array