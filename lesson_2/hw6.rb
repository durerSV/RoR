=begin
6. Сумма покупок. Пользователь вводит поочередно название товара, цену за единицу 
и кол-во купленного товара (может быть нецелым числом). Пользователь может ввести произвольное 
кол-во товаров до тех пор, пока не введет "стоп" в качестве названия товара. 
На основе введенных данных требуетеся:
Заполнить и вывести на экран хеш, ключами которого являются названия товаров, 
а значением - вложенный хеш, содержащий цену за единицу товара и кол-во купленного товара. 
Также вывести итоговую сумму за каждый товар.
Вычислить и вывести на экран итоговую сумму всех покупок в "корзине".
=end

hash = Hash.new
product = nil
value = nil
quantity = nil
sum = 0
sum_all = 0
hash2 = Hash.new
loop do
  puts "введите название товара или 'стоп' что бы завершить "

  product = gets.chomp
  if product.downcase == 'стоп'
    break
  end

  puts "введите стоимость за еденицу"
  value = gets.chomp.to_f
  puts "введите количество"
  quantity = gets.chomp.to_f

  hash[product] = {value => quantity}
end


hash.each do |product,value|
  value.each do |value,quantity|
    sum = value * quantity
  end
  hash2[product] = sum
  sum_all += sum
end
puts "Итого #{sum}"
puts "каждый товар #{hash2}"





