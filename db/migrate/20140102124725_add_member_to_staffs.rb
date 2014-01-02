class AddMemberToStaffs < ActiveRecord::Migration
  def change
    add_column :staffs, :member, :boolean, null: false, default: false
  end
end