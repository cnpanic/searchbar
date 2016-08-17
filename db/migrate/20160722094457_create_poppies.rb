class CreatePoppies < ActiveRecord::Migration
  def change
    create_table :poppies do |t|
      t.string :name
      t.string :kind
      t.integer :age

      t.timestamps null: false
    end
  end
end
