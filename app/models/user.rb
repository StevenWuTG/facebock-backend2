class User < ApplicationRecord
    has_secure_password

    has_one :wall
    has_many :posts, through: :wall
end
