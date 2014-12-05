class Table
  include Mongoid::Document
  include Positionable

  has_many :chairs
  belongs_to :project

  field :size_x
  field :size_y
end
