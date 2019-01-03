class ScriptSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :title, :timecode, :text, :characters

  has_many :captions, serializer: CaptionSerializer
end
