require 'bike'

describe Bike do 
  describe 'responds to working' do
    it {expect(Bike.new).to respond_to(:working?)} 
  end 

  it 'can be reported broken' do
    subject.report_broken
    expect(subject).to be_broken
  end
end