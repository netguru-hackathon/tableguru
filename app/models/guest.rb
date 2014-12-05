class Guest
  include Mongoid::Document
  include Positionable

  belongs_to :group
  belongs_to :chair

end
