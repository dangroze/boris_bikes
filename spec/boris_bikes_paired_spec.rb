require "boris_bikes_paired"

describe DockingStation do
	it {is_expected.to respond_to(:release_bike)}
end
