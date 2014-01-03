class AddThumbnailToPosts < ActiveRecord::Migration
  def self.up
    add_column(:posts, :thumbnail, :string)
    add_index(:posts, :thumbnail)
  end

  def self.down
    remove_index(:posts, :column => :thumbnail)
    remove_column(:posts, :thumbnail)
  end
end