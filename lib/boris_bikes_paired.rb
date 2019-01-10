class NoBikeError < StandardError
end

class DockingStation
  attr_reader :bike
  def initialize
    @bike = nil
  end

  def release_bike
    if @bike.nil?
      raise NoBikeError
    end
    @bike
  end

  def dock(bike)
    @bike = bike
  end
end

class Bike

  def working?
    true
  end
end
