class AddBlogImgToPost < ActiveRecord::Migration
  def change
    add_column :posts, :blog_img, :string
  end
end
