class BaseballPlayer
  def initialize(hits, walks, at_bats)
    @hits = hits
    @walks = walks
    @at_bats = at_bats
  end

  def batting_average
    @hits.to_f / @at_bats
  end

  def on_base_percentage
    (@hits + @walks).to_f / @at_bats
  end
end

justin = BaseballPlayer.new(5, 3, 20)
puts justin.batting_average
puts justin.on_base_percentage
