require 'rspec'

RSpec.describe Bowling do
  describe 'perfect game' do
    it 'should return 300' do
      expect { subject.new('X X X X X X X X X XXX').total_score }.to eq 300
    end
  end
end
