class Group
  include Mongoid::Document

  has_many :guests
end
