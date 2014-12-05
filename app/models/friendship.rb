class Friendship
  include Mongoid::Document

  field :strength, type: Float
  field :const, type: Float, default: 1.0

  field :guest1_id
  field :guest2_id
  belongs_to :project

  def guest1
    Guest.find(guest1_id)
  end

  def guest2
    Guest.find(guest2_id)
  end

  def self.energy(g1, g2, strength)
    strength * Math.exp(-g1.distance_to(g2) / const)
  end

end
