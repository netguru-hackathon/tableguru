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

  validates_presence_of :guest1, :guest2
end
