class RenameBlogImgToPostimg < ActiveRecord::Migration
  def change
  	rename_column :posts, :blog_img, :postimg
  end
end
