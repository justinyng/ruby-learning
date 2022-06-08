require 'pry-byebug'

class Cinema
  attr_accessor :name, :location

  def initialize(name, location)
    @name = name
    @location = location
    @movies = []
  end

  def add_movie(movie)
    @movies << movie
    movie.cinema = self
  end
end

class Movie
  attr_accessor :title, :showtime, :cinema

  @@all = []
  def initialize(title, showtime)
    @title = title
    @showtime = showtime
    @@all << self
  end
end

binding.pry
puts 'done'
# try creating these in pry IRB environment
# cobble_hill = Cinema.new('Cobble Hill Cinema', 'Court St, Brooklyn')
# spider_man = Movie.new('Spider-Man', '9:00')

