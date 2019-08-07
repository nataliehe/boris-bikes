require 'dockingStation'

describe DockingStation do
  it { is_expected.to respond_to :release_bike }

  describe '#release_bike' do
    it 'releases a bike' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq(bike)
    end

    it 'releases a working bike' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to be_working
    end

    it 'raises an error when there is no bikes available' do
      expect(subject.release_bike).to raise_error 'No bikes available'
    end
  end

  it { is_expected.to respond_to :dock }

  it { is_expected.to respond_to :bike}

  describe '#dock' do
    it 'can dock a bike' do
      bike = Bike.new
      expect(subject.dock(bike)).to eq(bike)
    end

    it 'raises an error when the docking station is full' do
      subject.dock(Bike.new)
      expect(subject.dock(Bike.new)).to raise_error 'Docking station full'
    end
  end

  it 'can show the docked bike' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike).to eq(bike)
  end

  # it { is_expected.to raise_error() }
end
