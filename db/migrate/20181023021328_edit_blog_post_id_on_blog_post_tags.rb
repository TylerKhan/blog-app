class EditBlogPostIdOnBlogPostTags < ActiveRecord::Migration[5.2]
  def change
    remove_column :blog_post_tags, :integer, :string
    change_column :blog_post_tags, :blog_post_id, "integer USING CAST(blog_post_id AS integer)"
  end
end
