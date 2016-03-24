class CreateAdvertisements < ActiveRecord::Migration
  def change
    create_table :advertisements do |t|
      t.string :title
      t.string :image
      t.integer :cash

      t.timestamps null: false
    end
  end
end
