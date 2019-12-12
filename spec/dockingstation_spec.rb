require 'dockingstation'

describe DockingStation do 
  describe 'responds to release_bike' do
  it { is_expected.to respond_to(:release_bike)} 
  end 

  it 'releases working bikes' do
    bike = Bike.new # putting in a new bike into the dock!!!!!!!!!!!
    subject.dock(bike)
    expect(subject.release_bike).to be_working
  end

  describe 'responds to dock' do
    it {is_expected.to respond_to(:dock).with(1).argument}
  end
  
  it 'returns docked bikes' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.docked).to eq [bike] #from bike to [bike]
  end

  describe '#release_bike' do
    it 'raises an error when there are no bikes available' do
      # Let's not dock a bike first:
      # remember subject == DockingStation.new
      expect { subject.release_bike }.to raise_error 'No bikes available'
    end
  end

  describe '# dock' do
    it 'raises an error when full' do
      20.times {subject.dock(Bike.new)}
      expect { subject.dock Bike.new }.to raise_error 'Docking station full'
    end
  end

end