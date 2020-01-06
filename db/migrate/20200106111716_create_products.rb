class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.text :name
      t.text :description
      t.text :funcionality
      t.decimal :price

      t.timestamps
    end
  end
end
