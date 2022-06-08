# frozen_string_literal: true

class Vehicle
  attr_accessor :color
  attr_reader :model, :year
  @@vehicle_count = 0

  def initialize(year, model, color)
    @year = year
    @model = model
    @color = color
    @@vehicle_count += 1
  end

  def self.vehicle_count
    @@vehicle_count
  end

  def self.start_engine
    puts 'engine starting sounds'
  end

  def age
    "Your #{model} is #{years_old} years old."
  end

  private

  def years_old
    Time.now.year - year
  end
end

module Towable; end

class MyCar < Vehicle
  TRUNK_SIZE = 'small'
end

class MyTruck < Vehicle
  include Towable

  TRUNK_SIZE = 'large'
end

# puts MyTruck.ancestors

carl = MyTruck.new(1997, 'fancy', 'sky blue')
puts carl.age

