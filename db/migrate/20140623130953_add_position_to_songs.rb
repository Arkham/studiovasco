class AddPositionToSongs < ActiveRecord::Migration
  def change
    add_column :songs, :position, :integer, default: 0
  end
end
