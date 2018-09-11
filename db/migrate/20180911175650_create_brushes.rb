class CreateBrushes < ActiveRecord::Migration[5.2]
  def change
    create_table :brushes do |t|
      t.string :sku, null: false, index: {unique: true}
      t.string :name, null: false
      t.timestamps
    end
  end
end
