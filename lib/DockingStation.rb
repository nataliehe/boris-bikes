require_relative 'bike'

class DockingStation
  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def dock(bike)
    fail 'Docking station full' if @bikes.size >= 20
    @bikes.push(bike)
  end

  def release_bike
    fail 'No bikes available' if @bikes.empty?
    @bikes.pop
  end

end
