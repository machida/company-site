class AddMetaToSites < ActiveRecord::Migration
  def change
    add_column :sites, :meta_description, :text, default: ""
    add_column :sites, :meta_keywords, :string, default: ""
  end
end