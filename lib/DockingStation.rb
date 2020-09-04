class DockingStation

attr_reader :bike

  def release_bike
    raise "There is no bike!" unless @bike
    @bike
  end

  def dock_bike(bike)
    @bike = bike
  end

end

class Bike

  def working?
    true
  end

end