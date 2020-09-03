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
end
