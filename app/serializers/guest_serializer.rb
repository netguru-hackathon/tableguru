class GuestSerializer < BaseSerializer
  attributes :id, :name, :image_url, :project_id, :chair_id, :group_id

  has_many :friendships
end
