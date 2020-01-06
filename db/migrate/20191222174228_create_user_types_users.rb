class CreateUserTypesUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :user_types_users do |t|
      t.integer :user_id
      t.integer :user_type_id
    end
  end
end
