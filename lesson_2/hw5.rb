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

if year % 4 == 0 && (year % 100 != 0 || (year % 100 == 0 && year % 400 == 0))  
  months = [0, 31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
else
  months = [0, 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
end

months.slice!(month..12)
days = months.sum + day


puts "дней до вашей даты #{days}"

