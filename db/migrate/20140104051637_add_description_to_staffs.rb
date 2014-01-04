class AddDescriptionToStaffs < ActiveRecord::Migration
  def self.up
    add_column(:staffs, :description, :text)
    add_index(:staffs, :description)
  end

  def self.down
    remove_index(:staffs, :column => :description)
    remove_column(:staffs, :description)
  end
end
