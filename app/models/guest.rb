class Guest
  include Mongoid::Document

  field :name
  field :image_url

  belongs_to :group
  belongs_to :chair
  belongs_to :project

  has_many :friendships

  delegate :x, :y, to: :chair
end
