class RequestSerializer < ActiveModel::Serializer
  attributes :id, :name, :title, :public, :details
  has_one :user
end
