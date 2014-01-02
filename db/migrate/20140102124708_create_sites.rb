class CreateSites < ActiveRecord::Migration
  def change
    create_table :sites do |t|
      t.string :title
      t.string :sub_title
      t.timestamps
    end
  end
end
