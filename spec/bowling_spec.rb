require 'rspec'
require 'bowling'

RSpec.describe Bowling do
  describe 'perfect game' do
    it 'should return 300' do
      expect(described_class.new('X X X X X X X X X X X X').total_score).to eq 300
    end
  end

  describe 'lousy game' do
    it do
      expect(described_class.new('1- 1- 1- 1- 1- 1- 1- 1- 1- 1-').total_score).to eq 10
    end
  end

  describe 'slightly better lousy game' do
    it do
      expect(described_class.new('11 1- 1- 1- 1- 1- 1- 1- 1- 1-').total_score).to eq 11
    end
  end

  describe 'even better lousy game' do
    it do
      expect(described_class.new('1/ 1- 1- 1- 1- 1- 1- 1- 1- 1-').total_score).to eq 20
    end
  end

  describe 'decent game' do
    it do
      expect(described_class.new('5/ 5/ 5/ 5/ 5/ 5/ 5/ 5/ 5/ 1-').total_score).to eq 132
    end
  end

  describe 'decent game' do
    it do
      expect(described_class.new('5/ 5/ 5/ 5/ 5/ 5/ -- 5/ 5/ 1-').total_score).to eq 112
    end
  end

  describe 'decent game' do
    it do
      expect(described_class.new('9- 9- 9- 9- 9- 9- 9- 9- 9- 9-').total_score).to eq 90
    end
  end

  describe 'decent game' do
    it do
      expect(described_class.new('X 5/ 1- 1- 1- 1- 1- 1- 1- 1-').total_score).to eq 39
    end
  end

  describe 'decent game' do
    it do
      expect(described_class.new('X 11 1- 1- 1- 1- 1- 1- 1- 1-').total_score).to eq 22
    end
  end

  describe 'decent game' do
    it do
      expect(described_class.new('5/ 5/ 5/ 5/ 5/ 5/ 5/ 5/ 5/ 5/ 5').total_score).to eq 150
    end
  end
end
