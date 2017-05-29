=begin
3. Заполнить массив числами фибоначчи до 100
=end
a = 0
b = 1
arr = [0]
loop do
  if a > b 
    arr << a
    b += a
  else
    arr << b
    a += b  
  end
  break if a > 100 || b > 100
  
end
puts arr