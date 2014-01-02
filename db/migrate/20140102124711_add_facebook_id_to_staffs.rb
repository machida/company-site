class AddFacebookIdToStaffs < ActiveRecord::Migration
  def self.up
    add_column(:staffs, :facebook_id, :string)
    add_index(:staffs, :facebook_id)
  end

  def self.down
    remove_index(:staffs, :column => :facebook_id)
    remove_column(:staffs, :facebook_id)
  end
end