class CreateEmployeeDetails < ActiveRecord::Migration
  def change
    create_table :employee_details do |t|
      t.string :city
      t.string :address
      t.integer :house_number
      t.string :phone_number
      t.string :postal_code
      t.references :employee, index: true

      t.timestamps null: false
    end
    add_foreign_key :employee_details, :employees
  end
end
