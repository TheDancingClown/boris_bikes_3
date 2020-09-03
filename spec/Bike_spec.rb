require 'DockingStation'
describe Bike do
    it "responds to if the bike is working" do
        expect(Bike.new).to respond_to(:working?)
    end
end
