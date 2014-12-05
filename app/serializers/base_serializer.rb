class BaseSerializer < ActiveModel::Serializer
  def id
    object.id.to_s
  end
end

