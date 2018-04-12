class AddTitleToDonuts < ActiveRecord::Migration[5.1]
  def change
    add_column :donuts, :title, :string
  end
end
