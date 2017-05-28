=begin
4. Заполнить хеш гласными буквами, где значением будет являтся порядковый номер буквы 
в алфавите (a - 1)
=end
hash = Hash.new
vowels = ['a', 'e', 'i', 'o', 'u', 'y']
alphabet = ('a'..'z').to_a
count = 1
alphabet.each do |letter|
  if vowels.include? letter
    hash[letter] = count
  end
  count += 1
end
puts hash