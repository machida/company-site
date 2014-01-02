class AddNameToStaffs < ActiveRecord::Migration
  def change
    add_column :staffs, :name, :string, null: false, default: ""
  end
end
