=begin
5. Заданы три числа, которые обозначают число, месяц, год (запрашиваем у пользователя).
Найти порядковый номер даты, начиная отсчет с начала года. 
Учесть, что год может быть високосным.
Алгоритм опредления високосного года: www.adm.yar.ru
=end
puts "enter day"
day = gets.chomp.to_i
puts "enter months"
month = gets.chomp.to_i 
puts "enter year"
year = gets.chomp.to_i

leap_year = false
months = [0, 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
days = 0

if year % 4 == 0
  leap_year = true
  if yaer % 100 == 0
    leap_year = false
    if year % 400 == 0
      leap_year = true
    end
  end
end
iterator = 0
while iterator < month
  days += months[iterator]
  iterator += 1 
end
days += day 
if leap_year && days > 59
  days += 1
end

puts "дней до вашей даты #{days}"

