class User < ApplicationRecord
    has_many :reviews
    has_many :requests
    has_secure_password

    validates :password, presence: true
end
