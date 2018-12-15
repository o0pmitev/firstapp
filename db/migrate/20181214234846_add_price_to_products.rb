class AddPriceToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :price, :integer
    add_column :products, :invokee, :string
    add_column :products, :active_recordd, :string
  end
end
