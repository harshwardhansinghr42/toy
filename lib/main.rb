# frozen_string_literal: true

require_relative 'toy'
toy_commands = File.read('inputs/input1').split(/\n+/)

toy = nil
toy_commands.each do |command|
  case command
  when 'MOVE'
    toy.move
  when 'LEFT'
    toy.change_to_left
  when 'RIGHT'
    toy.change_to_right
  when 'REPORT'
    p "#{toy.x_position}, #{toy.y_position}, #{toy.direction}"
  else
    command_split = command.split[1].split(',')
    toy = Toy.new(command_split[0].to_i, command_split[1].to_i,
                  command_split[2])
  end
end
