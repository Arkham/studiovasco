class SongSerializer < ActiveModel::Serializer
  attributes :id, :title, :text, :position
end
