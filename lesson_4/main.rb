require_relative 'controller.rb'
require_relative 'route.rb'
require_relative 'station.rb'

require_relative 'cargo_train.rb'
require_relative 'passenger_train.rb'

require_relative 'cargo_carriage.rb'
require_relative 'passenger_carriage.rb'

system 'clear'

def self.user_choice
  user_choice = gets.to_i
end

controller = Controller.new

puts 'Добро пожаловать в он-лайн депо!'
gets

loop do
  controller.main_actions
  controller.execute_action(user_choice)
end