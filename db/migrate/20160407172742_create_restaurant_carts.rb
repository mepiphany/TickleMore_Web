class CreateRestaurantCarts < ActiveRecord::Migration
  def change
    create_table :restaurant_carts do |t|
      t.string :title
      t.text :description
      t.string :image
      t.decimal :cash_value

      t.timestamps null: false
    end
  end
end
