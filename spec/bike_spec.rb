require 'bike'

describe Bike do 
  describe 'responds to working' do
  it {expect(Bike.new).to respond_to(:working?)} 
end 
end