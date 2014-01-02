class AddMetaToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :meta_description, :text, default: ""
    add_column :posts, :meta_keywords, :string, default: ""
  end
end