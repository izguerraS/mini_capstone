class CreateIdentifications < ActiveRecord::Migration[6.0]
  def change
    create_table :identifications do |t|
      t.integer :Id

      t.timestamps
    end
  end
end
