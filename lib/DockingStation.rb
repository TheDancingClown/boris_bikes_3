class DockingStation

  attr_reader :docked

  def release_bike
    Bike.new
  end
  def docking_bike
  
  end
end

class Bike

  attr_accessor :docked #creates instance variable

  def initialize
    @docked = docked
  end


  def working?
    true
  end
end