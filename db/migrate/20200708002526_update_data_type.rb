class UpdateDataType < ActiveRecord::Migration[6.0]
  def change
    change_column :products, :image_url, :text 
  end
end
