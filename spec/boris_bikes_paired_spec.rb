require "boris_bikes_paired"
require 'spec_helper'

describe DockingStation do
  it {is_expected.to respond_to(:release_bike)}
  describe "release_bike" do
		it "returns a bike" do
			expect(subject.release_bike) == Bike.new
		end
	#it "releases a bike" do
	#	DockingStation.new.release_bike
	end
	describe "working?" do
		it "is in working order or not" do
			expect(subject.release_bike).to be_working
		end
	end
end
