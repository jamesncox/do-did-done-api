class User < ApplicationRecord
    has_many :categories
    has_many :todos, through: :categories 

    has_secure_password
    validates :username, presence: true, uniqueness: true
    validates :password_confirmation, presence: true, on: :create
end
