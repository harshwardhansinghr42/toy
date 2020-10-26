# frozen_string_literal: true

require 'pry'
# Toy class
class Toy
  BOARD_MAX_WIDTH = 4
  BOARD_MIN_WIDTH = 0
  BOARD_MAX_HEIGHT = 4
  BOARD_MIN_HEIGHT = 0

  attr_accessor :x_position, :y_position, :direction

  def initialize(x_position, y_position, direction)
    @x_position = x_position
    @y_position = y_position
    @direction = direction
  end

  def change_to_left
    case direction
    when 'EAST'
      self.direction = 'NORTH'
    when 'WEST'
      self.direction = 'SOUTH'
    when 'NORTH'
      self.direction = 'WEST'
    when 'SOUTH'
      self.direction = 'EAST'
    end
  end

  def change_to_right
    case direction
    when 'EAST'
      self.direction = 'SOUTH'
    when 'WEST'
      self.direction = 'NORTH'
    when 'NORTH'
      self.direction = 'EAST'
    when 'SOUTH'
      self.direction = 'WEST'
    end
  end

  def move
    case direction
    when 'EAST'
      self.x_position += 1 unless x_position == BOARD_MAX_WIDTH
    when 'WEST'
      self.x_position -= 1 unless self.x_position == BOARD_MIN_WIDTH
    when 'NORTH'
      self.y_position += 1 unless y_position == BOARD_MAX_HEIGHT
    when 'SOUTH'
      self.y_position -= 1 unless self.y_position == BOARD_MIN_HEIGHT
    end
  end
end
