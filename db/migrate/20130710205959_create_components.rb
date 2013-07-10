class CreateComponents < ActiveRecord::Migration
  def change
    create_table :components do |t|
      t.integer :drink_id, :null => false
      t.integer :ingredient_id, :null => false
      t.string :quantity

      t.timestamps
    end
  end
end
