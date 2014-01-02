class AddGithubIdToStaffs < ActiveRecord::Migration
  def self.up
    add_column(:staffs, :github_id, :string)
    add_index(:staffs, :github_id)
  end

  def self.down
    remove_index(:staffs, :column => :github_id)
    remove_column(:staffs, :github_id)
  end
end