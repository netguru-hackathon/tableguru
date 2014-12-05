class Project
  include Mongoid::Document
  field :title

  belongs_to :user
  has_many :tables
  has_many :guests
  has_many :friendships

  validates_presence_of :title

  def chairs
    tables.map(&:chairs).flatten
  end
end
