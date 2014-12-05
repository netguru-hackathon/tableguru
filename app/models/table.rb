class Table
  include Mongoid::Document
  include Positionable

  has_many :chairs

  field :size_x
  field :size_y
end
