class DockingStation

attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    raise "There is no bike!" if @bikes.length == 0
    @bikes.pop
  end

  def dock_bike(bike)
    raise "Dock is full!" if @bikes.length >= 20
    @bikes << bike
  end

end

class Bike

  def working?
    true
  end

end

