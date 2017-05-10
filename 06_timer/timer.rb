class Timer
  attr_accessor :seconds

  def time_string()
    hours = @seconds / (60 * 60)
    remainder = @seconds % (60 * 60)
    minutes = remainder / 60
    seconds = remainder % 60
    '%02i:%02i:%02i' % [hours, minutes, seconds]
  end
  
  def initialize
    @seconds = 0
  end
end
