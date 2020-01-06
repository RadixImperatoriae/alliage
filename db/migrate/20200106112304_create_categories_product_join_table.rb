class CreateCategoriesProductJoinTable < ActiveRecord::Migration[5.0]
  def change
    drop_table(:product_categories_products, if_exists: true)

    create_join_table :product_categories, :products
  end
end
