class User < ApplicationRecord
  has_secure_password
  validates :name, uniqueness: { case_sensitive: false }
  validates :name, :password, presence: true
  
  has_many :responses 
  has_many :essays, through: :responses
end
