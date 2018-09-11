class CreateSupportTickets < ActiveRecord::Migration[5.2]
  def change
    create_table :support_tickets do |t|
      t.references :brush, null: false, foreign_key: true
      t.integer :material, null: false, default: 0

      t.string :feedback, null: false
      t.string :name, null: false
      t.string :email, null: false
      t.timestamps
    end
  end
end
