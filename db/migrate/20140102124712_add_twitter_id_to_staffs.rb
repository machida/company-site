class AddTwitterIdToStaffs < ActiveRecord::Migration
  def self.up
    add_column(:staffs, :twitter_id, :string)
    add_index(:staffs, :twitter_id)
  end

  def self.down
    remove_index(:staffs, :column => :twitter_id)
    remove_column(:staffs, :twitter_id)
  end
end