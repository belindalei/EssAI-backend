class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :username, :email
  has_many :responses 
  has_many :essays, through: :responses
end