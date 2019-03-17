class CreateEmployees < ActiveRecord::Migration[5.1]
  def change
    create_table :employees do |t|
      t.string :name
      t.references :designation, foreign_key: true
      t.text :contact
      t.text :email
      t.integer :gender

      t.timestamps
    end
  end
end
