=begin
4. Заполнить хеш гласными буквами, где значением будет являтся порядковый номер буквы 
в алфавите (a - 1)
=end
hash = {}
vowels = ['a', 'e', 'i', 'o', 'u', 'y']
alphabet = ('a'..'z').to_a
vowels.each do |letter|
  hash[letter] = alphabet.index(letter) + 1
end
puts hash