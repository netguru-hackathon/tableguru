class GuestSerializer < BaseSerializer
  attributes :id, :name, :image_url

  has_many :friendships
end
