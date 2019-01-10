require "boris_bikes_paired"

describe DockingStation do
  it {is_expected.to respond_to(:release_bike)}
	it "returns a bike" do
		subject.dock(Bike.new)
		expect(subject.release_bike) == Bike.new
	  # subject = DockingStation.new
	end
	it "is in working order or not" do
		subject.dock(Bike.new)
		expect(subject.release_bike).to be_working
	end
	it {is_expected.to respond_to(:dock).with(1).argument}
	it "returns docked bikes" do
		bike = Bike.new
		subject.dock(bike)
		expect(subject.bike) == bike
	end
	it "raises an error when there are no bikes" do
		expect { subject.release_bike }.to raise_error "NoBikeError"
	end
	it "raises an error when there is a bike in the dock" do
		bike = Bike.new
		subject.dock(bike)
		expect { subject.dock(bike)}.to raise_error "DockFullError"
	end
end
