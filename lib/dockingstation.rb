require_relative 'bike'

class DockingStation 
  attr_reader :docked
  attr_accessor :capacity
  DEFAULT_CAPACITY = 20
  
  def initialize(capacity = DEFAULT_CAPACITY)
    @capacity = capacity
    @docked = []
  end 
  
  def release_bike
    # puts "Release One Bike!"
    # Bike.new
    # @number -= 1
    fail 'No bikes available' if empty?
    @docked.pop
  end

  def dock(bike)
    fail 'Docking station full' if full?
    @docked << bike
  end

  def full?
    docked.count >= 20
  end

  def empty?
    docked.count == 0
  end

end 

# lol = DockingStation.new
# lol.release_bike
# lol.dock(3)