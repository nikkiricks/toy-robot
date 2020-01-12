require 'rspec'
require_relative 'toyrobot'


RSpec.describe "Toyrobot" do
  describe '#bark' do
    it 'returns "Woof!"' do
      expect(subject.bark).to eql('Woof!')
    end
  end
  
  before :each do 
    @new_game = Toyrobot.new "placement"
  end
  describe "#new" do
    it "returns a new game object" do 
      
    end
  end
end

