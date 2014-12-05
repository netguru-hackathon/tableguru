module Positionable

  def self.included(klass)
    klass.field :x, type: Float
    klass.field :y, type: Float
  end

end
