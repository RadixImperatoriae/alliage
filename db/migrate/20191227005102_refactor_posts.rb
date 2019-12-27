class RefactorPosts < ActiveRecord::Migration[5.0]
  def change
    change_table :posts do |t|
      t.references :user, foreign_key: true
    end
    add_index :posts, [:user_id, :created_at]
  end
end
