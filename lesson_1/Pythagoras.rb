=begin
Прямоугольный треугольник. Программа запрашивает у пользователя 3 стороны треугольника 
и определяет, является ли треугольник прямоугольным, используя теорему Пифагора 
(www-formula.ru) и выводит результат на экран. Также, если треугольник является 
при этом равнобедренным (т.е. у него равны любые 2 стороны), то дополнительно выводится 
информация о том, что треугольник еще и равнобедренный. Подсказка: чтобы воспользоваться 
теоремой Пифагора, нужно сначала найти самую длинную сторону (гипотенуза) и сравнить е
е значение в квадрате с суммой квадратов двух остальных сторон. Если все 3 стороны равны, 
то треугольник равнобедренный и равносторонний, но не прямоугольный.
=end
puts "введите размеры сторон треугольника"
side_a = gets.to_i
side_b = gets.to_i
side_c = gets.to_i
if side_a == side_b && side_b == side_c
	puts "Прямоугольник равносторонний"
	return
end


if side_a > side_b && side_a > side_c
	if side_a ** 2 == side_b ** 2 + side_c ** 2
		puts "Треуголник прямоугольный"
		if  side_b == side_c
			puts "и равнобедренный"
		end
	else
		puts "Треуголник не прямоугольный"
	end
elsif side_b > side_a && side_b > side_c
	if side_b ** 2 == side_a ** 2 + side_c ** 2
		puts "Треуголник прямоугольный"
		if  side_a == side_c
			puts "и равнобедренный"
		end
	end
else 
	if side_c ** 2 == side_b ** 2 + side_a ** 2
		puts "Треуголник прямоугольный"
		if  side_a == side_b
			puts "и равнобедренный"
		end
	end
			
	
end