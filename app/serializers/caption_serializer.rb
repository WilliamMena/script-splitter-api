class CaptionSerializer < ActiveModel::Serializer
  attributes :id, :text, :completed, :timecode, :script_id
end
