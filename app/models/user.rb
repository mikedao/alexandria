class User < ApplicationRecord
  validates :username, uniqueness: true, presence: true
  validates_presence_of :password
  validates_presence_of :email

  has_secure_password
end