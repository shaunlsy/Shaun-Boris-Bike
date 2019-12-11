require_relative 'bike'

class DockingStation 
  attr_reader :docked
  
  def initialize(capacity = 20)
    @capacity = capacity
    @docked = []
  end 
  
  def release_bike
    # puts "Release One Bike!"
    # Bike.new
    # @number -= 1
    fail 'No bikes available' if @docked.empty?
    @docked.pop
  end

  def dock(bike)
    fail 'Docking station full' if @docked.length >= 20
    @docked << bike
  end

end 

# lol = DockingStation.new
# lol.release_bike
# lol.dock(3)