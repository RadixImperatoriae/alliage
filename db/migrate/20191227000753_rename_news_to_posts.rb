class RenameNewsToPosts < ActiveRecord::Migration[5.0]
  def self.up
    rename_table :news, :posts
  end

  def self.down
    rename_table :posts, :news
  end
end
