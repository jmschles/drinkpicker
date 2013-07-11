class AddImageForFilepickerUrlToDrinks < ActiveRecord::Migration
  def change
    add_column :drinks, :filepicker_url, :string
  end
end
