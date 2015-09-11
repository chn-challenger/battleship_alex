class Ship

attr_accessor :size, :body  

def initialize(size = 2)
  @size = size
  @body = Array.new(size) {Hash[:position => nil, :hit => false]}
end

def write_ship_coords(coords)
  @body.each.with_index do |body_part, i| 
      body_part[:position] = coords[i]
  end
  return nil
end

end




#p ship = Ship.new


    # ship.body.each.with_index do |body_part,i|
    #   body_part[:position] = coords_to_add[i]
    # end

