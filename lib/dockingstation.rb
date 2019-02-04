require_relative 'bike'
class DockingStation
  DEFAULT_CAPACITY = 20

  attr_reader :capacity

  def initialize(capacity = DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end

  def release_bike
    raise "NoBikeError" if empty?
    @bikes.pop if !@bikes.last.broken?
  end

  def dock(bike)
    raise "DockFullError" if full?
    @bikes << bike
  end

  private
  attr_reader :bikes

  def full?
    @bikes.count >= capacity
  end

  def empty?
    @bikes.empty?
  end
end
