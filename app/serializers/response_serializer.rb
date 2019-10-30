class ResponseSerializer < ActiveModel::Serializer
  attributes :id, :paragraph, :essay_id, :user_id
end