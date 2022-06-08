# some documentation
class MyCar
  attr_accessor :color
  attr_reader :year

  def self.calculate_gas_mileage(litre, km)
    puts "#{km / litre} km per litre of gas"
  end

  def initialize(year, color, model)
    @year = year
    @color = color
    @model = model
    @current_speed = 0
  end

  def speed_up; end
  def brake; end
  def shut_off_car; end

  def spray_paint(color)
    self.color = color
    puts "Your new #{color} paint job looks great!"
  end

  def to_s
    'override to_s method for my car'
  end
end

my_car = MyCar.new(123, 'red', 'latest trim')
puts my_car.color
my_car.color = 'bright blue'
puts my_car.color
puts my_car.year
my_car.spray_paint('another shiny color')

MyCar.calculate_gas_mileage(13, 351)
puts my_car