class DockingStation
  attr_reader :bikes
  attr_accessor :capacity

  DEFAULT_CAPACITY = 20

  def initialize(capacity = DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end

  def empty?
    @bikes.empty?
  end

  def release_bike
    raise "NoBikeError" if empty?
    @bikes.pop
  end

  def full?
    @bikes.count >= capacity
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
