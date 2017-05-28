=begin
3. Заполнить массив числами фибоначчи до 100
=end
array = []
fibonacci = 0
count = 0
a = 1
b = 1
loop do
  array << fibonacci
  if (count % 2 == 0)
    fibonacci = a
    a += b
  else
    fibonacci = b
    b += a
  end
  count += 1
break if fibonacci > 100  
end
print array