class User < ApplicationRecord
    has_secure_password

    validates :username, uniqueness: true

    has_one :wall
    has_many :posts, through: :wall
end
