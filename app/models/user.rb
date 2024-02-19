# app/models/user.rb
# app/models/user.rb
class User < ApplicationRecord
    has_secure_password
    has_many :movies
    validates :username, presence: true, uniqueness: true
    validates :password, length: { minimum: 6 }
  end
  