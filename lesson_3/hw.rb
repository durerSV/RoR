#Клас Station
class  Station
  #Имеет название, которое указывается при создании 
  @trains = []

  def initialize(station_name)
    @station_name = station_name
  end

  #Может принимать поезда по одному за раз
  def arrival train
    @trains << train
    
  end

  #Может возвращать список всех поездов на станции
  def trains_list
    @trains.each {|train| puts train}
  end
  #Может возвращать список всех поездов по типу(грузовой/пассажирский)
  def type_of_trains type
     @trains.each do |train|
      if train.type == type
        puts train
      end
    end
  end
  #Может отправлять поезда по одному за раз(при этом поезд удалаяется из списка поездов)
  def departure_train train
    @trains.delete train
  end
  
end
#Класс Route
#Имеет начальную и конечную станцию, а так же список промежуточных станций
#начальная и конечная станции указываются указываются при создании маршрута
class  Route
  @stations = []
  def initialize(first_stattion, last_station)
    @stations.push first_station
    @stations.push last_station
  end
 #А промежуточные станции могут добовляться между ними 
  def add_station station_name
    @stations.insert -2, station_name 
    
  end

  #Промежуточные станции могут удаляться
  def delete_station station_name
    @stations.delete station_name
    
  end

  #Может выводить список всех станций по-порядку от начальной до конечной
  def routes_list
    @stations.each {|station| puts station}
  end
  def station id
    @stations[id]
  end
end
#Класс Train 
class Train
  attr_reader :type
  #Имеет номер, тип(грузовой/пассажирский) и количество вагонов
  def initialize (train_number, type, quantity_of_car)
    @train_number = train_number
    @type = type
    @quantity_of_car = quantity_of_car
  end
  #Может набирать/возвращать скорость
  attr_accessor :speed

  #Может тормозить (сбрасывать скорость до нуля)
  def stop
    self.speed = 0
  end
  #Может возвращать количество вагонов
  def quantity
    @quantity_of_car
  end

  #Может прицеплять отцеплять вогоны по одному
  def add_car
    if speed == 0
      quantity_of_car += 1
    end
  end

  def delete_car
    if speed == 0 
      quantity_of_car -= 1
    end
  end
  #Может принимать маршрут следования (объект класса Route), при назначении маршрута
  #поезд автоматически перемещается  на первую станцию маршрута
  def new_route route
    @route = route
    @curent_station = 0
    @route.station @curent_station.arrival(self) 
    
  end
  #Может перемещаться между станциями указаннымив маршруте, вперед и назад
  def next_station
    @route.station[@curent_station].departure_train(self)
    @curent_station += 1
    @route.station[@curent_station].arrival(self)
  end

  def previous_station
    @route.station[@curent_station].departure_train(self)
    @curent_station -= 1
    @route.station[@curent_station].arrival(self)
  end

  #Возвращать предыдущую, текущую и следующую станции
  def curent_station
    puts "предидущая станция #{@route.station[@curent_station - 1]}"
    puts "текущая станция#{@route.station[@curent_station]}"
    puts "следующая станция #{@route.station[@curent_station + 1]}"
  end

end