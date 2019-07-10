class RemoveCommentFromBlogs < ActiveRecord::Migration[5.2]
  def change
    remove_column :blogs, :comment, :text
  end
end
