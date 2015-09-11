require_relative 'ship'

class Board

def initialize
  @ships = []
end

  def place(ship, down_value, right_value, orientation)


    ship.body.each do |body_part|
      body_part[:position] = [down_value, right_value]
      case orientation
        when 'north' then down_value -= 1
        when 'east' then right_value += 1
        when 'south' then down_value += 1
        when 'west' then right_value -= 1
      end
    end
    @ships << ship
  end

end


















board = Board.new
ship1 = Ship.new
ship2 = Ship.new

board.place(ship1, 1, 1, 'east')
board.place(ship2, 2, 2, 'south')

p board
