class Friendship
  include Mongoid::Document

  field :strength, type: Float
  field :const, type: Float, default: 1.0

  belongs_to :guest1
  belongs_to :guest2

  def energy
    strength * Math.exp(-guest1.distanceTo(guest2) / const)
  end

end
