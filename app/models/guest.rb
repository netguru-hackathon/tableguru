class Guest
  include Mongoid::Document

  field :name
  field :image_url

  belongs_to :group
  belongs_to :chair
  belongs_to :project

  delegate :x, :y, :distance_to, to: :chair

  validates_presence_of :name
end
