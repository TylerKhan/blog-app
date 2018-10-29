class CreateBlogPostTags < ActiveRecord::Migration[5.2]
  def change
    create_table :blog_post_tags do |t|
      t.string :blog_post_id
      t.string :integer
      t.integer :tag_id

      t.timestamps
    end
  end
end
