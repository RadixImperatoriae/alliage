class CreateUserTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :user_types do |t|
      t.string :description
      t.boolean :active

      t.timestamps
    end
    add_index :news, [:user_id, :created_at]
  end
end
