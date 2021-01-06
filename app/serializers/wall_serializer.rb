class WallSerializer < ActiveModel::Serializer
  attributes :id

  has_one :user
  # has_many :posts
end
