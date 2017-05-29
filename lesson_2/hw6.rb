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

cart = {}
product = nil
value = nil
quantity = nil
sum_all = 0
loop do
  puts "введите название товара или 'стоп' что бы завершить "
  product = gets.chomp
  if product.downcase == 'стоп'
    break
  elsif cart.include? product
    puts "данный продукт уже внесен в корзину #{cart[product]}" 
    puts "можете обновить стоимость количество \"y\" /либо ввести новый продукт\"n\" "
    change = gets.downcase.include? 'n'
     next if change
  end
  puts "введите стоимость за еденицу"
  price = gets.chomp.to_f
  puts "введите количество"
  quantity = gets.chomp.to_f
  cart[product] = {price: price, quantity: quantity, sum: price * quantity}
  sum_all += price * quantity
  puts cart[product]
end
cart.each { |a| puts a}
puts "Итого #{sum_all}"





