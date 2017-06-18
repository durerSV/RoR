class Station
  attr_reader :title, :trains

  def initialize(title)
    @title = title
    @trains = []
  end

  def trains_at_the_station
    if self.trains.empty?
      puts '  ..поездов нет.'
    else
      puts '  ..cписок поездов на станции:'
      self.trains.each do |train|
        puts "\tпоезд №: #{train.number}"
        puts "\tтип: #{Train::TYPE[train.type]}"
        puts "\tкол-во вагонов: #{train.carriages.count}"
        train.route.name
      end
    end
  end

  def trains_by_type(type)
    self.trains.select { |train| train.type if train.type == type }.count
  end

  def take_the_train(train)
    self.trains << train
    puts "Поезд следующий по маршруту #{train.route.stations.first.title} - #{train.route.stations.last.title} прибыл на станцию #{self.title}"
  end

  def send_train(train)
    if self.trains.include?(train) 
      self.trains.delete(train) 

      puts "Поезд отправился со станции #{self.title}"
    else
      puts "Такого поезда на станции #{self.title} нет."
    end
  end
end