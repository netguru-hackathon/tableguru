class Chair
  include Mongoid::Document
  include Positionable

  belongs_to :table
  has_one :guest
end
