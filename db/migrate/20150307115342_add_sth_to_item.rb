class AddSthToItem < ActiveRecord::Migration
  def change
  	remove_column :items, :vat, :decimal
    add_column :items, :vat, :double
  end
end
