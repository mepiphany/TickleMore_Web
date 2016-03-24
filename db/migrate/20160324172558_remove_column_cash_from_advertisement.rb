class RemoveColumnCashFromAdvertisement < ActiveRecord::Migration
  def change
    remove_column :advertisements, :cash, :integer
  end
end
