class CreateProductCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :product_categories do |t|
      t.text :name
      t.text :description

      t.timestamps
    end
  end
end
