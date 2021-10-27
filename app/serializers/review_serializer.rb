class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :title, :comment
  has_one :user
end
