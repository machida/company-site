class AddSubTitleToPosts < ActiveRecord::Migration
  def self.up
    add_column(:posts, :sub_title, :string)
    add_index(:posts, :sub_title)
  end

  def self.down
    remove_index(:posts, :column => :sub_title)
    remove_column(:posts, :sub_title)
  end
end
