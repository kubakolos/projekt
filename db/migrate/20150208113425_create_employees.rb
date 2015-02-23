class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :name
      t.string :surname
      t.string :workplace
      t.integer :years_of_work
      t.boolean :access_to_cash

      t.timestamps null: false
    end
  end
end
