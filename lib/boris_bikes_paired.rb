class DockingStation
  attr_reader :bikes
  def initialize
    @bikes = []
  end

  def release_bike
    if @bikes.empty?
      raise "NoBikeError"
    end
    @bikes.pop
  end

  def dock(bike)
    if @bikes.count >= 20
      raise "DockFullError"
    end
    @bikes << bike
  end
end

class Bike

  def working?
    true
  end
end
