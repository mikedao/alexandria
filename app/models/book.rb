class Book < ApplicationRecord
  validates :title, presence: true
  validates :isbn, presence: true, uniqueness: true
  
  has_many :book_users
  has_many :users, through: :book_users
end