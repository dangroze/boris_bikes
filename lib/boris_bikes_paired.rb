class DockingStation
  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def empty?
    @bikes.empty?
  end

  def release_bike
    raise "NoBikeError" if empty?
    @bikes.pop
  end

  def full?
    @bikes.count >= 20
  end

  def dock(bike)
    raise "DockFullError" if full?
    @bikes << bike
  end

  private :empty?, :full?
end

class Bike

  def working?
    true
  end
end
