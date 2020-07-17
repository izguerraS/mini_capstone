class AddCatId < ActiveRecord::Migration[6.0]
  def change
    add_column :categories, :category_id, :string

  end

end
