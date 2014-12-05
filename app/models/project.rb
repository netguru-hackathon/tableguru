class Project
  include Mongoid:Document
  field :title
  belongs_to :user
  has_many :tables
end
