class AddPublishedToStaffs < ActiveRecord::Migration
  def change
    add_column :staffs, :published, :boolean, null: false, default: false
  end
end