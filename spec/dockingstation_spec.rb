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
      subject = DockingStation.new.dock_bike(Bike.new)
      expect(subject.working?).to eq(true)
    end

    it 'throws an error when we attempt to release bike but there is no bike' do

      expect {subject.release_bike}.to raise_error("There is no bike!")
    end

  end

  describe 'dock_bike' do
    it 'responds to docking a bike to a docking station' do
      expect(subject).to respond_to(:dock_bike) #calling docking bike on the instance of docking station
    end
    it 'returns back bike object' do
      bike = Bike.new
      expect(subject.dock_bike(bike)).to eq(bike)
    end

  end
end
