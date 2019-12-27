class ImagePosts2 < ActiveRecord::Migration[5.0]
  def change
    change_column :posts, :image, :attachment
  end
end
