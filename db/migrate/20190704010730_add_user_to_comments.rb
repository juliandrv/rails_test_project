class AddUserToComments < ActiveRecord::Migration[5.2]
  def change
    add_column :comments, :user, :string, limit: 40
    add_column :comments, :rating, :integer
  end

  
  
end
