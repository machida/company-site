class AddSlugToStaffs < ActiveRecord::Migration
  def change
    add_column :staffs, :slug, :string
  end
end
