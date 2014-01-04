class AddDescriptionToPosts < ActiveRecord::Migration
  def self.up
    add_column(:posts, :description, :text)
    add_index(:posts, :description)
  end

  def self.down
    remove_index(:posts, :column => :description)
    remove_column(:posts, :description)
  end
end
