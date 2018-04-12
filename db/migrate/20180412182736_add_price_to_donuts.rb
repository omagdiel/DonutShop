class AddPriceToDonuts < ActiveRecord::Migration[5.1]
  def change
    add_column :donuts, :price, :float
  end
end
