module Positionable

  def self.included(klass)
    klass.field :x, type: Float
    klass.field :y, type: Float
  end

  def distance_to(object)
    dx = x - object.x
    dy = y - object.y
    Math.sqrt(dx*dx + dy*dy)
  end

end
