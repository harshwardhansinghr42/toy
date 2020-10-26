# frozen_string_literal: true

require 'toy'

describe 'Toy changes direction in left side' do
  context 'Toy changes direction in left from different directions' do
    toy = Toy.new(1, 1, 'NORTH')
    it 'should turn West from North' do
      toy.change_to_left
      expect(toy.direction).to eq 'WEST'
    end

    it 'should turn South from West' do
      toy.change_to_left
      expect(toy.direction).to eq 'SOUTH'
    end

    it 'should turn East from South' do
      toy.change_to_left
      expect(toy.direction).to eq 'EAST'
    end

    it 'should turn North from East' do
      toy.change_to_left
      expect(toy.direction).to eq 'NORTH'
    end
  end
end

describe 'Toy changes direction in right side' do
  context 'Toy changes direction in right from different directions' do
    toy = Toy.new(1, 1, 'NORTH')
    it 'should turn East from North' do
      toy.change_to_right
      expect(toy.direction).to eq 'EAST'
    end

    it 'should turn South from East' do
      toy.change_to_right
      expect(toy.direction).to eq 'SOUTH'
    end

    it 'should turn West from South' do
      toy.change_to_right
      expect(toy.direction).to eq 'WEST'
    end

    it 'should turn North from West' do
      toy.change_to_right
      expect(toy.direction).to eq 'NORTH'
    end
  end
end
