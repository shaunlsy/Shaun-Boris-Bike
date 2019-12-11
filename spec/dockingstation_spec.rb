require 'dockingstation'
require 'bike'

describe DockingStation do 
  describe 'responds to release_bike' do
  it {expect(DockingStation.new).to respond_to(:release_bike)} 
end 
end

describe DockingStation do 
  describe 'responds to wokring' do
  it {expect(DockingStation.new.release_bike).to respond_to(:working?)} 
end 
  describe 'returns true' do
  it {expect(DockingStation.new.release_bike.working?).to eq true} 
end 
end

# describe DockingStation do 
#   describe 'releases a bike' do
#   it {expect(:release_bike).to eq Bike} 
# end 
# end

# Your test should check that you can call working? on the result of DockingStation.release_bike, 
# and that the result of doing so is true.

# describe 'fizzbuzz' do 
#   it 'returns "FizzBuzz" when passed 15' do
#     expect(DockingStation)).to eq 0
#   end 
# end 
#   it 'returns "Fizz" when passed 3' do
#     expect(fizzbuzz(3)).to eq 'Fizz'
#   end 
#   it 'returns "Buzz" when passed 5' do
#     expect(fizzbuzz(5)).to eq 'Buzz'
#   end 
# end 