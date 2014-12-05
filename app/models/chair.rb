class Chair
  include Mongoid::Document
  include Positionable

  belongs_to :table
  has_one :guest

  validates_presence_of :x, :y
end
