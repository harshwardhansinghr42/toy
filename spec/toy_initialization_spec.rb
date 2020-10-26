# frozen_string_literal: true

require 'toy'

describe 'Toy initialization' do
  context 'improper parameters in constructor' do
    it 'should raise error for wrong number of args' do
      expect { Toy.new(1) }.to raise_error(ArgumentError)
    end

    it 'should match the error message for wrong number of args' do
      expect { Toy.new(1) }
        .to raise_error
        .with_message('wrong number of arguments (given 1, expected 3)')
    end
  end

  context 'proper parameters in constructor' do
    it 'should create a toy object' do
      toy = Toy.new(1, 1, 'EAST')
      expect(toy.class.name).to eq 'Toy'
      expect(toy.x_position).to eq 1
      expect(toy.y_position).to eq 1
    end
  end
end
