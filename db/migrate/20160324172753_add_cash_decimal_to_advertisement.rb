class AddCashDecimalToAdvertisement < ActiveRecord::Migration
  def change
    add_column :advertisements, :cash_value, :decimal
  end
end
