class FixPostOnBlogs < ActiveRecord::Migration[5.2]
  def self.up
    rename_column :blogs, :post, :content
end

  def self.down
    rename_column :blogs, :content, :post
  end


end
