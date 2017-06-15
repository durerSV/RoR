class Route
  attr_reader :stations, :start_station, :end_station

  def initialize(start_station, end_station)
    @stations = [start_station, end_station]
    @start_station = start_station
    @end_station = end_station
  end

  def stations_list
    self.stations.each.with_index(1) { |station, index| puts "#{index}. #{station.title}" }
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