class HobbySerializer < ActiveModel::Serializer
  attributes :id, :name, :image, :description
  has_one :hwsaa
end
