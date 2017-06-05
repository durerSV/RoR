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
  def type_of_trains (type = nill)
    if type 
     @trains.each do |train|
      if train.type == type
        puts train
      end
    else
      @trains.each { |train| puts train}
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
    @stations = [first_stattion, last_station]
    
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
  attr_accessor :speed
  attr_reader :type
  
  def initialize (train_number, type)
    @train_number = train_number
    @type = type
    @cars = 0
    speed = 0
  end
  
  def stop
    self.speed = 0
  end
  def acceleration (speed = 10 )
    self.speed += speed
  end

  def quantity
    @cars
  end

  
  def add_car
    if speed == 0
      @cars += 1
    end
  end

  def delete_car
    if speed == 0 && @cars > 0
      @cars -= 1
    end
  end
  #Может принимать маршрут следования (объект класса Route), при назначении маршрута
  #поезд автоматически перемещается  на первую станцию маршрута
  def new_route route
    @route = route
    @curent_station = 0
    @route.station [@curent_station].arrival(self) 
    
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