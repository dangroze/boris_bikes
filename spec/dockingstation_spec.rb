require "dockingstation"
describe DockingStation do
	subject { DockingStation.new }

  describe '#release_bike' do
		it "raises an error when there are no bikes" do
			expect { subject.release_bike }.to raise_error "NoBikeError"
		end
	  it "releases a working bike" do
      bike = double(:bike, :broken? => false)
		  subject.dock(bike)
		  expect(subject.release_bike).to eq bike
	  end
		it 'does not release broken bike' do
      bike = double(:bike, :broken? => true)
      subject.dock(bike)
      expect(subject.release_bike).to_not eq(bike)
    end
	end
	describe '#dock' do
		it "raises an error when dock is full" do
			bike = double('a bike')
			DockingStation::DEFAULT_CAPACITY.times {subject.dock(bike)}
			expect { subject.dock(bike)}.to raise_error "DockFullError"
		end
	  it "returns docked bikes" do
		  bike = double('a bike')
		  expect(subject.dock(bike)).to include(bike)
	  end
	end
end
