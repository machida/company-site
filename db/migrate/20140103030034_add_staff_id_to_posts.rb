class AddStaffIdToPosts < ActiveRecord::Migration
  def self.up
    add_column(:posts, :staff_id, :integer)
    add_index(:posts, :staff_id)
  end

  def self.down
    remove_index(:posts, :column => :staff_id)
    remove_column(:posts, :staff_id)
  end
end