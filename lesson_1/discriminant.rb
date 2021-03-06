=begin
Квадратное уравнение. Пользователь вводит 3 коэффициента a, b и с. 
Программа вычисляет дискриминант (D) и корни уравнения (x1 и x2, если они есть) 
и выводит значения дискриминанта и корней на экран. При этом возможны следующие варианты:
  Если D > 0, то выводим дискриминант и 2 корня
  Если D = 0, то выводим дискриминант и 1 корень (т.к. корни в этом случае равны)
  Если D < 0, то выводим дискриминант и сообщение "Корней нет"
Подсказка: Алгоритм решения с блок-схемой (www.bolshoyvopros.ru). 
Для вычисления квадратного корня, нужно использовать  
 
Math.sqrt
 
 Например,  
 
Math.sqrt(16)
 
  вернет 4, т.е. квадратный корень из 16.
=end

puts "Введите a, b и c"
a = gets.to_f
b = gets.to_f
c = gets.to_f

d = b ** 2 - 4 * a * c
puts d

if d > 0
	x1 = (Math.sqrt(d)  - b) / (2 * a)
	x2 = (-Math.sqrt(d) - b) / (2 * a)
	puts "Дискриминант равен #{d}, а корни квадратного уравнения равны #{x1} и #{x2}"
	puts  ((a * x1 ** 2 + b * x1 + c == 0) && (a * x2 ** 2 + b * x2 + c == 0)) ? "Корни прошли проверку" : "Корни не прошли проверку"
elsif d == 0
	x = b * (-1) / 2 * a
	puts "Дискриминант равен 0, корень равен #{x} "
	puts "Корень прошел проверку " if (a * x ** 2 + b * x + c == 0)
	
else	
	puts "корней нет"
end