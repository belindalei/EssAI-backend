class Essay < ApplicationRecord
  has_many :responses 
  has_one :user, through: :responses 
end
