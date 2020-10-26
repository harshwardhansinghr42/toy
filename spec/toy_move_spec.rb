# frozen_string_literal: true

require 'toy'

describe 'Error with toy movement' do
  context 'wrong parameters for movement' do
    it 'should raise error for wrong type of args' do
      expect { Toy.new('1', '2', 'EAST').move }
        .to raise_error(TypeError)
    end

    it 'should match the error message for wrong type of args' do
      expect { Toy.new('1', '2', 'EAST').move }
        .to raise_error
        .with_message('no implicit conversion of Integer into String')
    end
  end
end

describe 'Toy moves horizontally' do
  context 'movement of toy in horizontal directions' do
    it 'should increment x position by 1' do
      toy = Toy.new(1, 2, 'EAST')
      x_position_before_move = toy.x_position
      toy.move
      expect(toy.x_position).to eq(x_position_before_move + 1)
    end

    it 'should decrement x position by 1' do
      toy = Toy.new(1, 2, 'WEST')
      x_position_before_move = toy.x_position
      toy.move
      expect(toy.x_position).to eq(x_position_before_move - 1)
    end
  end
end

describe 'Toy moves vertically' do
  context 'movement of toy in vertical directions' do
    it 'should increment y position by 1' do
      toy = Toy.new(1, 2, 'NORTH')
      y_position_before_move = toy.y_position
      toy.move
      expect(toy.y_position).to eq(y_position_before_move + 1)
    end

    it 'should decrement y position by 1' do
      toy = Toy.new(1, 2, 'SOUTH')
      y_position_before_move = toy.y_position
      toy.move
      expect(toy.y_position).to eq(y_position_before_move - 1)
    end
  end
end

describe 'Toy not moves horizontal' do
  context 'no movement of toy if toy is positioned
           on the horizontal corners of the board' do
    it 'should not increment x position by 1' do
      toy = Toy.new(4, 2, 'EAST')
      x_position_before_move = toy.x_position
      toy.move
      expect(toy.x_position).to eq x_position_before_move
    end

    it 'should not decrement x position by 1' do
      toy = Toy.new(0, 2, 'WEST')
      x_position_before_move = toy.x_position
      toy.move
      expect(toy.x_position).to eq x_position_before_move
    end
  end
end

describe 'Toy not moves vertical' do
  context 'no movement of toy if toy is positioned
           on the vertical corners of the board' do
    it 'should not increment y position by 1' do
      toy = Toy.new(1, 4, 'NORTH')
      y_position_before_move = toy.y_position
      toy.move
      expect(toy.y_position).to eq y_position_before_move
    end

    it 'should not decrement y position by 1' do
      toy = Toy.new(1, 0, 'SOUTH')
      y_position_before_move = toy.y_position
      toy.move
      expect(toy.y_position).to eq y_position_before_move
    end
  end
end
