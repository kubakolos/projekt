class AddPriceToItems < ActiveRecord::Migration
  def change
    add_column :items, :price, :double
  end
end
