class ScriptSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :title, :text, :characters

  has_many :captions
end
