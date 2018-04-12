class CreateDonuts < ActiveRecord::Migration[5.1]
  def change
    create_table :donuts do |t|
      t.integer :dough, :default => 0
      t.integer :frosting, :default => 0
      t.integer :topping, :default => 0

      t.timestamps
    end
  end
end
