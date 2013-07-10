class CreateDrinks < ActiveRecord::Migration
  def change
    create_table :drinks do |t|
      t.string :name, :null => false
      t.string :instructions
      t.string :link

      t.timestamps
    end
  end
end
