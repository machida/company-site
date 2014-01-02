class AddBodyToStaffs < ActiveRecord::Migration
  def self.up
    add_column(:staffs, :body, :text)
    add_index(:staffs, :body)
  end

  def self.down
    remove_index(:staffs, :column => :body)
    remove_column(:staffs, :body)
  end
end