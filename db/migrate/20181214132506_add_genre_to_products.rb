class AddGenreToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :genre, :string
    add_column :products, :invoke, :string
    add_column :products, :active_record, :string
  end
end
