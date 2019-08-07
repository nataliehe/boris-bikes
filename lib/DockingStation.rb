require_relative 'bike'

class DockingStation
  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def dock(bike)
    raise 'Docking station full' if full?
    @bikes.push(bike)
  end

  def release_bike
    raise 'No bikes available' if empty?
    @bikes.pop
  end

  private
  def full?
    @bikes.count >= 20
  end

  def empty?
    @bikes.empty?
  end
end
