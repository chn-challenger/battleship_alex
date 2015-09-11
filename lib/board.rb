require_relative 'ship'

class Board

def initialize
  @ships = []
end

  def impending_coords(size, down_value, right_value, orientation)
      result = []
      size.times do
        result << [down_value, right_value]
        case orientation
          when 'north' then down_value -= 1
          when 'east' then right_value += 1
          when 'south' then down_value += 1
          when 'west' then right_value -= 1
        end
      end
      result
  end

  def place(ship, down_value, right_value, orientation)
    coords_to_add = impending_coords(ship.size,down_value, right_value, orientation)
    # outside??
    # overlapping??
    ship.write_ship_coords(coords_to_add)
    @ships << ship
  end

  def write_ship_coords(coords)

  end

end


# board = Board.new
# p board.impending_coords(3,2,2,'east')

















board = Board.new
ship1 = Ship.new
ship2 = Ship.new

board.place(ship1, 1, 1, 'east')
board.place(ship2, 2, 2, 'south')

p board
