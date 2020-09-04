require 'DockingStation'

describe DockingStation do
  describe '#release_bike' do

    it 'throws an error when we attempt to release bike but there is no bike' do
      expect { subject.release_bike}.to raise_error "There is no bike!"
    end
  end
end
