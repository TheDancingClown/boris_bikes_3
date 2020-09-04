require 'DockingStation'
describe DockingStation do
  describe 'release_bike' do
    it 'responds to releasing a bike from docking station' do
      expect(DockingStation.new).to respond_to(:release_bike) #DockingStation.new is the object of the class
    end

    it 'creates a new instance of Bike' do
      expect((DockingStation.new).release_bike).to respond_to(:working?)
    end

    it 'expects true when working is called on a Bike' do
      expect(subject.release_bike.working?).to eq(true)
    end
  end
  describe 'docking_bike' do
    it 'responds to docking a bike to a docking station' do
      expect(subject).to respond_to(:dock_bike) #calling docking bike on the instance of docking station
    end
    it 'returns back bike object' do
      bike = Bike.new
      expect(subject.dock_bike(bike)).to eq(bike)
    end

  end


end
