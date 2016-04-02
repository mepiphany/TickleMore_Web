class CreateBreadcrumbs < ActiveRecord::Migration
  def change
    create_table :breadcrumbs do |t|
      t.string :title
      t.decimal :cash_value
      t.boolean :view
      t.decimal :cash_wallet

      t.timestamps null: false
    end
  end
end
