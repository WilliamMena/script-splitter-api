class CaptionSerializer < ActiveModel::Serializer
  attributes :id, :text, :completed, :timecode, :script_id, :in_point, :out_point
end
