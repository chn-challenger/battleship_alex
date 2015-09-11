class Ship

attr_accessor :size, :body  

def initialize(size = 2)
  @size = size
  @body = Array.new(size) {Hash[:position => nil, :hit => false]}
end

end




#p ship = Ship.new
