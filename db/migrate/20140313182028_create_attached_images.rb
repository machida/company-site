class CreateAttachedImages < ActiveRecord::Migration
  def change
    create_table :attached_images do |t|
      t.string :image
      t.string :alt

      t.timestamps
    end
  end
end
