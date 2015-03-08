class CreateInvoices < ActiveRecord::Migration
  def change
    create_table :invoices do |t|
      t.string :client_name
      t.string :client_surname
      t.string :client_address
      t.integer :item_id
      t.integer :quantity

      t.timestamps null: false
    end
  end
end
