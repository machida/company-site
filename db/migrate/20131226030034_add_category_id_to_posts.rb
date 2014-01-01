class AddCategoryIdToPosts < ActiveRecord::Migration
  def self.up
    add_column(:posts, :category_id, :integer)
    add_index(:posts, :category_id)
  end

  def self.down
    remove_index(:posts, :column => :category_id)
    remove_column(:posts, :category_id)
  end
end