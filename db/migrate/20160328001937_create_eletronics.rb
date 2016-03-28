class CreateEletronics < ActiveRecord::Migration
  def change
    create_table :eletronics do |t|
      t.string :title
      t.text :description
      t.decimal :cash_value
      t.string :image

      t.timestamps null: false
    end
  end
end
