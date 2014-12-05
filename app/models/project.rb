class Project
  include Mongoid::Document
  field :title

  belongs_to :user
  has_many :tables
  has_many :guests

  validates_presence_of :title
end
