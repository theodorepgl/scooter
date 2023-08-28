require 'time'

class Scooter
  attr_accessor :start_time, :end_time

  def initialize(start_time, end_time)
    @start_time = Time.parse(start_time)
    @end_time = Time.parse(end_time)
  end

  def rental_duration
    @end_time - @start_time
  end
end