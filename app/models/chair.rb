class Chair
  include Mongoid::Document
  include Positionable

  has_one :guest
end
