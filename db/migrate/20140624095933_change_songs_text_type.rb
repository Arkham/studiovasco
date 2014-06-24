class ChangeSongsTextType < ActiveRecord::Migration
  def change
    change_column :songs, :text, :text
  end
end
