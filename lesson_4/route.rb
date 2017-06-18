class Route
  attr_reader :stations

  def initialize(start_station, end_station)
    @stations = [start_station, end_station]
    
  end

  def start_station
    @stations[0]
  end
  def end_station
    @stations.last
  end
  def stations_list
    self.stations.each.with_index(1) { |station, index| puts "#{index}. #{station.title}" }
  end
  def name
    puts "\tмаршрут следования: #{self.stations[0].title} - #{self.stations.last.title}"
  end
  def add_station!(station)
    self.stations.insert(-2, station)
    puts "Станция «#{station.title}» добавлена в маршрут #{self.stations.first.title} - #{self.stations.last.title}."
  end

  def remove_station!(station)
    if station.trains.empty?
      self.stations.delete(station) 
      puts "Станция #{station.title} успешно удалена из машртуа #{self.stations.first.title} - #{self.stations.last.title}."
    else
      puts "Нельзя удалить станцию с находящимися на ней поездами. Переместите их."
    end
  end
end