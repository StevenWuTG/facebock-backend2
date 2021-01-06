class WallSerializer < ActiveModel::Serializer
  attributes :id

  has_many :users
  has_many :posts
end
