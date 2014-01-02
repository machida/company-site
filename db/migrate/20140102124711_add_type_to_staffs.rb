class AddTypeToStaffs < ActiveRecord::Migration
  def self.up
    add_column(:staffs, :type, :string)
    add_index(:staffs, :type)
  end

  def self.down
    remove_index(:staffs, :column => :type)
    remove_column(:staffs, :type)
  end
end