class FixUserOnComments < ActiveRecord::Migration[5.2]
  def self.up
    rename_column :comments, :user, :user_name
  end

  def self.down
    rename_column :comments, :user_name, :user
  end
end
