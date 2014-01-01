class AddNameToAuthors < ActiveRecord::Migration
  def change
    add_column :authors, :name, :string, null: false, default: ""
  end
end
